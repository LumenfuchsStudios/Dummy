## * AydenTFoxx @ 2025-01-13 .. 2025-01-31
## * 
## * Updates the dummy with entity-like and custom behavior.


## Ignore if current block is a Redstone Torch or Block.
execute if predicate lumenfuchs:block/lock_dummy_movement run return run particle dust{ color: 12062476, scale: 1.2 } ~ ~0.5 ~ 0.2 0.3 0.2 1.0 8 force


## # AUDIO-VISUAL

# Turn to player
$execute if data storage lumenfuchs:flags { dummy: { stare_player: true } } if entity @p[distance=0.5..$(stare_player_distance)] run function lumenfuchs:dummy/utils/turn_towards_player

# Turn forwards
execute if data storage lumenfuchs:flags { dummy: { stalk_player: true, stare_player: false } } if entity @s[tag=lumenfuchs.dummy.is_walking] anchored eyes run function lumenfuchs:dummy/utils/turn_towards_player
$execute if data storage lumenfuchs:flags { dummy: { stalk_player: true } } unless entity @p[distance=..$(stare_player_distance)] anchored eyes run rotate @s facing ^ ^ ^1


# Wave limbs
execute if entity @s[tag=lumenfuchs.dummy.is_walking] as @e[type=item_display, tag=lumenfuchs.entity.dummy_limb, tag=!lumenfuchs.dummy_limb.torso, tag=!lumenfuchs.dummy_limb.head, distance=..2] if function lumenfuchs:dummy/utils/is_matching_guid at @s run function lumenfuchs:dummy/physics/wave_limb
execute if entity @s[tag=lumenfuchs.dummy.is_hurt] as @e[type=item_display, tag=lumenfuchs.entity.dummy_limb, tag=!lumenfuchs.dummy_limb.torso, tag=!lumenfuchs.dummy_limb.head, distance=..2] if function lumenfuchs:dummy/utils/is_matching_guid at @s run function lumenfuchs:dummy/physics/wave_limb_strong


# Play ambience (presence)
$execute if predicate lumenfuchs:random/1 as @a[distance=..$(stare_player_distance)] \
		run playsound $(ambience_presence) hostile @s ^ ^ ^ 2 0.5 0.1

# Play ambience (target)
$execute if predicate lumenfuchs:random/5 as @p[distance=..$(stalk_player_distance)] \
		run playsound $(ambience_target) hostile @s ^ ^ ^4 1 1.5 0.2


## # BEHAVIOR

## Move

# Detect player looking at dummy
$execute if data storage lumenfuchs:flags { dummy: { freeze_when_stared: true } } at @p[distance=$(stalk_player_threshold)..$(stare_player_distance)] positioned ^ ^ ^1 facing entity @s feet positioned ^ ^ ^-1 if entity @p[distance=..0.8] run tag @s add lumenfuchs.dummy.looked_at

# Remove looking tag
execute if entity @s[tag=lumenfuchs.dummy.looked_at] at @p positioned ^ ^ ^1 facing entity @s feet positioned ^ ^ ^-1 unless entity @p[distance=..0.8] run tag @s remove lumenfuchs.dummy.looked_at


# Start walking
$execute unless entity @s[tag=lumenfuchs.dummy.is_walking] if entity @p[distance=$(stalk_player_threshold)..$(stalk_player_distance)] if predicate lumenfuchs:random/5 run tag @s add lumenfuchs.dummy.is_walking

# Stop walking
$execute if entity @s[tag=lumenfuchs.dummy.is_walking] unless entity @p[distance=$(stalk_player_threshold)..$(stalk_player_distance)] run function lumenfuchs:dummy/physics/reset_limbs
$execute if entity @s[tag=lumenfuchs.dummy.is_walking] unless entity @p[distance=$(stalk_player_threshold)..$(stalk_player_distance)] run tag @s remove lumenfuchs.dummy.is_walking

execute if entity @s[tag=lumenfuchs.dummy.is_walking] if entity @p[distance=..32] \
		positioned ^ ^ ^0.2 if predicate lumenfuchs:block/stop_dummy_move \
		run tag @s remove lumenfuchs.dummy.is_walking

tag @s[tag=lumenfuchs.dummy.is_walking, tag=lumenfuchs.dummy.looked_at] remove lumenfuchs.dummy.is_walking


# Move towards nearest player
execute if entity @s[tag=lumenfuchs.dummy.is_walking, tag=!lumenfuchs.dummy.looked_at] run function lumenfuchs:dummy/physics/move { direction: "^ ^ ^0.1" }


## Attack

# Harm non-player entities
execute if data storage lumenfuchs:flags { dummy: { harm_on_touch: true } } run damage @n[type=!#lumenfuchs:technical, distance=..1] 2 thorns by @s


# Prepare attack
$execute if data storage lumenfuchs:flags { dummy: { attack_player: true } } unless entity @s[tag=lumenfuchs.dummy.is_walking] if entity @p[distance=..$(attack_player_distance)] \
		as @n[type=item_display, tag=lumenfuchs.dummy_limb.l_arm, distance=..3] \
		run function lumenfuchs:dummy/utils/attack_prepare

# Add tag
$execute if data storage lumenfuchs:flags { dummy: { attack_player: true } } unless entity @s[tag=lumenfuchs.dummy.is_walking] if entity @p[distance=..$(attack_player_distance)] \
		as @n[type=item_display, tag=lumenfuchs.dummy_limb.l_arm, distance=..3] if score @s lumenfuchs.clock matches 100.. \
		run tag @n[type=interaction, tag=lumenfuchs.entity.dummy, tag=!lumenfuchs.dummy.is_attacking, distance=..3] add lumenfuchs.dummy.is_attacking


# Run attack
execute if entity @s[tag=lumenfuchs.dummy.is_attacking] run function lumenfuchs:dummy/events/attack

# Revert attack pose
$execute unless entity @s[tag=lumenfuchs.dummy.is_walking] unless entity @p[distance=..$(attack_player_distance)] as @n[type=item_display, tag=lumenfuchs.dummy_limb.l_arm, distance=..3] if score @s lumenfuchs.clock matches 1.. run function lumenfuchs:dummy/utils/attack_revert