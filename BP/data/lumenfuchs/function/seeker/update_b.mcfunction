## * AydenTFoxx @ 2025-01-27 .. 2025-01-29
## * 
## * Updates the dummy with entity-like and custom behavior.


## Ignore if current block is a Redstone Torch or Block.
execute if predicate lumenfuchs:block/lock_dummy_movement run return run particle dust{ color: 12062476, scale: 1.2 } ~ ~0.5 ~ 0.2 0.3 0.2 1.0 8 force


## # TIMER

# Add score
scoreboard players add @s lumenfuchs.settings 1

# Remove self
execute if score @s lumenfuchs.settings matches 600.. run return run function lumenfuchs:dummy/events/remove


## # AUDIO-VISUAL

# Turn to mob
$execute if data storage lumenfuchs:flags { dummy: { stare_player: true } } if entity @n[type=!#lumenfuchs:technical, type=!player, distance=0.5..$(stare_player_distance)] run function lumenfuchs:seeker/utils/turn_towards_mob
execute if data storage lumenfuchs:flags { dummy: { stalk_player: true, stare_player: false } } if entity @s[tag=lumenfuchs.dummy.is_walking] anchored eyes run function lumenfuchs:seeker/utils/turn_towards_mob


# Wave limbs
execute if entity @s[tag=lumenfuchs.dummy.is_walking] as @e[type=item_display, tag=lumenfuchs.entity.dummy_limb, tag=!lumenfuchs.dummy_limb.torso, tag=!lumenfuchs.dummy_limb.head, distance=..3] if function lumenfuchs:dummy/utils/is_matching_guid at @s run function lumenfuchs:seeker/utils/wave_limb
execute if entity @s[tag=lumenfuchs.dummy.is_hurt] as @e[type=item_display, tag=lumenfuchs.entity.dummy_limb, tag=!lumenfuchs.dummy_limb.torso, tag=!lumenfuchs.dummy_limb.head, distance=..3] if function lumenfuchs:dummy/utils/is_matching_guid at @s run function lumenfuchs:dummy/physics/wave_limb_strong


# Play ambience (presence)
$execute if predicate lumenfuchs:random/5 \
		run playsound $(ambience_presence) neutral @a[distance=..32] ^ ^ ^ 2 0.5 0.1

# Play ambience (target)
$execute if predicate lumenfuchs:random/5 \
		run playsound $(ambience_target) neutral @a[distance=..64] ^ ^ ^4 1 1.5 0.2


## # BEHAVIOR

## Move

# Detect player looking at dummy
$execute if data storage lumenfuchs:flags { dummy: { freeze_when_stared: true } } at @p[distance=..$(stare_player_distance)] positioned ^ ^ ^1 facing entity @s feet positioned ^ ^ ^-1 if entity @p[distance=..0.1] run tag @s add lumenfuchs.dummy.looked_at

# Remove looking tag
execute if entity @s[tag=lumenfuchs.dummy.looked_at] at @p positioned ^ ^ ^1 facing entity @s feet positioned ^ ^ ^-1 unless entity @p[distance=..0.1] run tag @s remove lumenfuchs.dummy.looked_at


# Start walking
$execute unless entity @s[tag=lumenfuchs.dummy.is_walking] if entity @n[type=!#lumenfuchs:technical, type=!player, distance=1..$(stalk_player_distance)] if predicate lumenfuchs:random/10 run tag @s add lumenfuchs.dummy.is_walking

# Stop walking
$execute if entity @s[tag=lumenfuchs.dummy.is_walking] unless entity @n[type=!#lumenfuchs:technical, type=!player, distance=1..$(stalk_player_distance)] run function lumenfuchs:dummy/physics/reset_limbs
$execute if entity @s[tag=lumenfuchs.dummy.is_walking] unless entity @n[type=!#lumenfuchs:technical, type=!player, distance=1..$(stalk_player_distance)] run tag @s remove lumenfuchs.dummy.is_walking

execute if entity @s[tag=lumenfuchs.dummy.is_walking] if entity @n[type=!#lumenfuchs:technical, type=!player, distance=..32] \
		positioned ^ ^ ^0.2 if predicate lumenfuchs:block/stop_dummy_move \
		run tag @s remove lumenfuchs.dummy.is_walking

tag @s[tag=lumenfuchs.dummy.is_walking, tag=lumenfuchs.dummy.looked_at] remove lumenfuchs.dummy.is_walking


# Stare player if being looked at
execute if entity @s[tag=lumenfuchs.dummy.looked_at] if data storage lumenfuchs:flags { dummy: { stare_player: true } } run return run function lumenfuchs:dummy/utils/turn_towards_player

# Move towards nearest mob
execute if entity @s[tag=lumenfuchs.dummy.is_walking, tag=!lumenfuchs.dummy.looked_at] positioned ^ ^ ^0.2 unless predicate lumenfuchs:block/stop_dummy_move positioned ^ ^ ^-0.2 run function lumenfuchs:dummy/physics/move { direction: "^ ^ ^0.25" }


## Attack

# Harm non-player entities
execute if data storage lumenfuchs:flags { dummy: { harm_on_touch: true } } run damage @n[type=!#lumenfuchs:technical, distance=..1] 2 thorns by @s