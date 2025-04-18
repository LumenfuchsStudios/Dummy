## * AydenTFoxx @ 2025-01-13 .. 2025-04-07
## * 
## * Updates the Dummy with entity-like and custom behavior.


## Ignore if current block is a Redstone Torch or Block.
execute if predicate dummy_lib:block/dummy_stunlock run return fail

## Ignore if on paralysis
execute if entity @s[tag=dummy_lib.dummy.paralysis] run return fail


## # TIMER

# Add score
scoreboard players operation @s lumenfuchs.settings += #dummy_lib_tick_rate_b dummy_lib.dummy

# Remove self
execute if score @s[tag=lumenfuchs.entity.mimic] lumenfuchs.settings matches 1300.. run return run function dummy_lib:utils/force_remove
execute if score @s lumenfuchs.settings matches 3600.. run return run function dummy_lib:events/remove


## # AUDIO-VISUAL

# Turn to player
$execute if data storage lumenfuchs:flags { dummy: { stare_player: true } } if entity @p[gamemode=!spectator, distance=0.5..$(stare_player_distance)] run function lumenfuchs:dummy/utils/turn_towards_player
$execute if data storage lumenfuchs:flags { dummy: { stalk_player: true } } unless entity @p[gamemode=!spectator, distance=..$(stare_player_distance)] if entity @s[tag=dummy_lib.dummy.is_walking] anchored eyes run function lumenfuchs:dummy/utils/turn_towards_player


# Wave limbs
execute if entity @s[tag=dummy_lib.dummy.is_walking] as @e[type=item_display, tag=dummy_lib.entity.dummy_limb, tag=!dummy_lib.dummy_limb.torso, tag=!dummy_lib.dummy_limb.head, distance=..2, limit=8] if function dummy_lib:utils/is_matching_guid run function dummy_lib:physics/wave_limb
execute if entity @s[tag=dummy_lib.dummy.is_hurt] as @e[type=item_display, tag=dummy_lib.entity.dummy_limb, tag=!dummy_lib.dummy_limb.torso, tag=!dummy_lib.dummy_limb.head, distance=..2, limit=8] if function dummy_lib:utils/is_matching_guid run function dummy_lib:physics/wave_limb_strong


# Play ambience (presence)
$execute if predicate dummy_lib:random/1 as @a[distance=..$(stare_player_distance)] \
		run playsound $(ambience_presence) hostile @s ^ ^ ^ 2 0.5 0.1

# Play ambience (target)
$execute if predicate dummy_lib:random/5 as @p[gamemode=!spectator, distance=..$(stalk_player_distance)] \
		run playsound $(ambience_target) hostile @s ^ ^ ^4 1 1.5 0.2


## # BEHAVIOR

## Move

# Detect player looking at dummy
$execute if data storage lumenfuchs:flags { dummy: { freeze_when_stared: true } } at @p[gamemode=!spectator, distance=$(stalk_player_threshold)..$(stare_player_distance)] positioned ^ ^ ^1 facing entity @s feet positioned ^ ^ ^-1 if entity @p[gamemode=!spectator, distance=..0.8] run tag @s add lumenfuchs.dummy.looked_at

# Remove looking tag
execute if entity @s[tag=lumenfuchs.dummy.looked_at] at @p positioned ^ ^ ^1 facing entity @s feet positioned ^ ^ ^-1 unless entity @p[gamemode=!spectator, distance=..0.8] run tag @s remove lumenfuchs.dummy.looked_at


# Start walking
$execute unless entity @s[tag=dummy_lib.dummy.is_walking] unless score @s dummy_lib.clock matches 1.. \
		if entity @p[gamemode=!spectator, distance=$(stalk_player_threshold)..$(stalk_player_distance)] if predicate dummy_lib:random/5 \
		run tag @s add dummy_lib.dummy.is_walking

# Stop walking
$execute if entity @s[tag=dummy_lib.dummy.is_walking] unless entity @p[gamemode=!spectator, distance=$(stalk_player_threshold)..$(stalk_player_distance)] run function dummy_lib:physics/reset_limbs
$execute if entity @s[tag=dummy_lib.dummy.is_walking] unless entity @p[gamemode=!spectator, distance=$(stalk_player_threshold)..$(stalk_player_distance)] run tag @s remove dummy_lib.dummy.is_walking

execute if entity @s[tag=dummy_lib.dummy.is_walking] if entity @p[gamemode=!spectator, distance=..32] \
		positioned ^ ^ ^0.2 if predicate dummy_lib:block/dummy_avoid \
		run tag @s remove dummy_lib.dummy.is_walking

tag @s[tag=dummy_lib.dummy.is_walking, tag=lumenfuchs.dummy.looked_at] remove dummy_lib.dummy.is_walking


# Move towards nearest player
execute if entity @s[tag=dummy_lib.dummy.is_walking, tag=!lumenfuchs.dummy.looked_at, tag=!lumenfuchs.entity.mimic] run function dummy_lib:physics/move { direction: "^ ^ ^0.1" }
execute if entity @s[tag=dummy_lib.dummy.is_walking, tag=!lumenfuchs.dummy.looked_at, tag=lumenfuchs.entity.mimic] run function dummy_lib:physics/move { direction: "^ ^ ^0.25" }


## Warp

# Tunnel downwards if no player is found in current dimension
execute unless entity @p[gamemode=!spectator, distance=0..] \
		run return run function lumenfuchs:dummy/events/teleport/dimension

# Teleport to nearest player if none can be targeted by the Dummy
$execute unless entity @p[gamemode=!spectator, distance=0..$(stare_player_distance)] unless entity @s[tag=dummy_lib.dummy.is_walking] \
		run return run function lumenfuchs:dummy/events/teleport/distance


# Reset warp trigger
execute if score @s dummy_lib.dummy matches 20.. if entity @p[distance=0..] run scoreboard players reset @s dummy_lib.dummy


## Attack

# Harm non-player entities (ignored by Purity)
execute if data storage lumenfuchs:flags { dummy: { harm_on_touch: true } } as @e[type=!#dummy_lib:technical, distance=..1] \
		unless score @s lumenfuchs.purity matches 12.. run damage @s 2 thorns by @n[type=interaction, tag=lumenfuchs.entity.dummy, distance=..2]


# Prepare attack
$execute if data storage lumenfuchs:flags { dummy: { attack_player: true } } unless entity @s[tag=dummy_lib.dummy.is_walking] \
		if entity @p[gamemode=!spectator, distance=..$(attack_player_distance)] \
		run function lumenfuchs:dummy/utils/attack_prepare

execute if data storage lumenfuchs:flags { dummy: { attack_player: true } } if score @s[tag=!dummy_lib.dummy.is_walking] dummy_lib.clock matches 120.. \
		run function lumenfuchs:dummy/utils/attack_prepare

# Run attack
execute if data storage lumenfuchs:flags { dummy: { attack_player: true } } if score @s[tag=!dummy_lib.dummy.is_walking] dummy_lib.clock matches 160.. \
		run function lumenfuchs:dummy/events/attack


# Revert attack prep
$execute unless entity @p[gamemode=!spectator, distance=..$(attack_player_distance)] if score @s[tag=!dummy_lib.dummy.is_walking] dummy_lib.clock matches 1..119 run function lumenfuchs:dummy/utils/attack_revert

# Remove floating tag
execute if entity @s[tag=dummy_lib.dummy.is_floating] unless score @s dummy_lib.clock matches 1.. run tag @s remove dummy_lib.dummy.is_floating