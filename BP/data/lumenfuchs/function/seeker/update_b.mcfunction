## * AydenTFoxx @ 2025-01-27 .. 2025-04-07
## * 
## * Updates the Seeker with entity-like and custom behavior.


## Ignore if current block is a Redstone Torch or Block.
execute if predicate dummy_lib:block/dummy_stunlock run return fail

## Ignore if on paralysis
execute if entity @s[tag=dummy_lib.dummy.paralysis] run return fail


## # TIMER

# Add score
scoreboard players operation @s lumenfuchs.settings += #dummy_lib_tick_rate_b dummy_lib.dummy

# Remove self
execute if score @s lumenfuchs.settings matches 1200.. run return run function dummy_lib:events/remove


## # AUDIO-VISUAL

# Turn to mob
$execute if data storage lumenfuchs:flags { dummy: { stare_player: true } } if entity @n[type=!#dummy_lib:technical, type=!player, distance=0.5..$(stare_player_distance)] run function lumenfuchs:seeker/utils/turn_towards_mob
$execute if data storage lumenfuchs:flags { dummy: { stalk_player: true } } unless entity @n[type=!#dummy_lib:technical, type=!player, distance=0.5..$(stare_player_distance)] if entity @s[tag=dummy_lib.dummy.is_walking] anchored eyes run function lumenfuchs:seeker/utils/turn_towards_mob

$execute if data storage lumenfuchs:flags { dummy: { stalk_player: true } } unless entity @n[type=!#dummy_lib:technical, type=!player, distance=0.5..$(stare_player_distance)] as @n[type=item_display, tag=dummy_lib.dummy_limb.head, distance=..3] if function dummy_lib:utils/is_matching_guid run data modify entity @s Rotation set from entity @n[type=item_display, tag=dummy_lib.dummy_limb.torso, distance=..3] Rotation


# Wave limbs
execute if entity @s[tag=dummy_lib.dummy.is_walking] as @e[type=item_display, tag=dummy_lib.entity.dummy_limb, tag=!dummy_lib.dummy_limb.torso, tag=!dummy_lib.dummy_limb.head, distance=..3, limit=8] if function dummy_lib:utils/is_matching_guid run function lumenfuchs:seeker/utils/wave_limb
execute if entity @s[tag=dummy_lib.dummy.is_hurt] as @e[type=item_display, tag=dummy_lib.entity.dummy_limb, tag=!dummy_lib.dummy_limb.torso, tag=!dummy_lib.dummy_limb.head, distance=..3, limit=8] if function dummy_lib:utils/is_matching_guid run function dummy_lib:physics/wave_limb_strong


# Play ambience (presence)
$execute if predicate dummy_lib:random/5 \
		run playsound $(ambience_presence) neutral @a[distance=..32] ^ ^ ^ 2 0.5 0.1

# Play ambience (target)
$execute if predicate dummy_lib:random/5 \
		run playsound $(ambience_target) neutral @a[distance=..64] ^ ^ ^4 1 1.5 0.2


## # BEHAVIOR

## Move

# Detect player looking at dummy
$execute if data storage lumenfuchs:flags { dummy: { freeze_when_stared: true } } at @p[gamemode=!spectator, distance=..$(stare_player_distance)] positioned ^ ^ ^1 facing entity @s feet positioned ^ ^ ^-1 if entity @p[gamemode=!spectator, distance=..0.1] run tag @s add lumenfuchs.dummy.looked_at

# Remove looking tag
execute if entity @s[tag=lumenfuchs.dummy.looked_at] at @p positioned ^ ^ ^1 facing entity @s feet positioned ^ ^ ^-1 unless entity @p[gamemode=!spectator, distance=..0.1] run tag @s remove lumenfuchs.dummy.looked_at


# Start walking
$execute unless entity @s[tag=dummy_lib.dummy.is_walking] if entity @n[type=!#dummy_lib:technical, type=!player, distance=1..$(stalk_player_distance)] if predicate dummy_lib:random/10 run tag @s add dummy_lib.dummy.is_walking

# Stop walking
$execute if entity @s[tag=dummy_lib.dummy.is_walking] unless entity @n[type=!#dummy_lib:technical, type=!player, distance=1..$(stalk_player_distance)] run function dummy_lib:physics/reset_limbs
$execute if entity @s[tag=dummy_lib.dummy.is_walking] unless entity @n[type=!#dummy_lib:technical, type=!player, distance=1..$(stalk_player_distance)] run tag @s remove dummy_lib.dummy.is_walking

execute if entity @s[tag=dummy_lib.dummy.is_walking] if entity @n[type=!#dummy_lib:technical, type=!player, distance=..32] \
		positioned ^ ^ ^0.2 if predicate dummy_lib:block/dummy_avoid \
		run tag @s remove dummy_lib.dummy.is_walking

tag @s[tag=dummy_lib.dummy.is_walking, tag=lumenfuchs.dummy.looked_at] remove dummy_lib.dummy.is_walking


# Stare player if being looked at
execute if entity @s[tag=lumenfuchs.dummy.looked_at] if data storage lumenfuchs:flags { dummy: { stare_player: true } } run return run function lumenfuchs:dummy/utils/turn_towards_player

# Move towards nearest mob
execute if entity @s[tag=dummy_lib.dummy.is_walking, tag=!lumenfuchs.dummy.looked_at] positioned ^ ^ ^0.2 unless predicate dummy_lib:block/dummy_avoid positioned ^ ^ ^-0.2 run function dummy_lib:physics/move { direction: "^ ^ ^0.25" }


## Attack

# Harm non-player entities (ignored by Purity)
execute if data storage lumenfuchs:flags { dummy: { harm_on_touch: true } } as @e[type=!#dummy_lib:technical, distance=..1] \
		unless score @s lumenfuchs.purity matches 12.. run damage @s 2 thorns by @n[type=interaction, tag=lumenfuchs.entity.seeker, distance=..2]