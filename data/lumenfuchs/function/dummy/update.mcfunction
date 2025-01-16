## * AydenTFoxx @ 2025-01-13 - 2025-01-15
## * 
## * Updates the dummy with entity-like and custom behavior.


## # PHYSICS

# Apply gravity
execute if loaded ~ ~ ~ if block ~ ~-0.1 ~ #lumenfuchs:transparent run function lumenfuchs:dummy/physics/accelerate

# Apply upwards momentum (Slime Block)
execute if loaded ~ ~ ~ if block ~ ~ ~ slime_block run scoreboard players set @s lumenfuchs.momentum -10


# Raise from ground
execute if loaded ~ ~ ~ unless block ~ ~ ~ #lumenfuchs:transparent unless block ~ ~ ~ slime_block run function lumenfuchs:dummy/physics/move { direction: "~ ~0.1 ~" }

# Reset gravity
execute if loaded ~ ~ ~ unless block ~ ~-0.1 ~ #lumenfuchs:transparent run scoreboard players reset @s lumenfuchs.momentum


# Remove forceload
execute if data storage lumenfuchs:flags { dummy: { forceload_chunks: true } } unless loaded ~ ~ ~ run forceload remove ~-1 ~-1 ~1 ~1

## Ignore if dead
execute if loaded ~ ~ ~ if entity @s[tag=lumenfuchs.dummy.is_dead] run return run function lumenfuchs:dummy/events/death

# Add forceload
execute if data storage lumenfuchs:flags { dummy: { forceload_chunks: true } } unless loaded ~ ~ ~ run forceload add ~ ~ ~ ~


## Ignore if unloaded
execute unless loaded ~ ~ ~ run return fail


## # AUDIO-VISUAL

# Turn to player
$execute if data storage lumenfuchs:flags { dummy: { stare_player: true } } if entity @p[distance=0.5..$(stare_player_distance)] run function lumenfuchs:dummy/utils/turn_towards_player

# Turn forwards
$execute if data storage lumenfuchs:flags { dummy: { stare_player: true } } unless entity @p[distance=..$(stare_player_distance)] anchored eyes run rotate @s facing ^ ^ ^1


# Wave limbs
execute if entity @s[tag=lumenfuchs.dummy.is_walking] as @e[type=item_display, tag=lumenfuchs.entity.dummy_limb, tag=!lumenfuchs.dummy_limb.torso, tag=!lumenfuchs.dummy_limb.head, distance=..2] if function lumenfuchs:dummy/utils/is_matching_guid at @s run function lumenfuchs:dummy/physics/wave_limb
execute if entity @s[tag=lumenfuchs.dummy.is_hurt] as @e[type=item_display, tag=lumenfuchs.entity.dummy_limb, tag=!lumenfuchs.dummy_limb.torso, tag=!lumenfuchs.dummy_limb.head, distance=..2] if function lumenfuchs:dummy/utils/is_matching_guid at @s run function lumenfuchs:dummy/physics/wave_limb_strong


# Play ambience (presence)
$execute if predicate lumenfuchs:random/1 as @a[distance=..$(stare_player_distance)] at @s anchored eyes \
		run playsound $(ambience_presence) hostile @s ^ ^ ^-2 1 0.5 0.2

# Play ambience (target)
$execute if predicate lumenfuchs:random/5 as @p[distance=..$(stalk_player_distance)] at @s anchored eyes \
		run playsound $(ambience_target) hostile @s ^ ^ ^2 1 0.8 0.2


## # BEHAVIOR

## Damage

# Simulate damage
execute if data entity @s attack run return run function lumenfuchs:dummy/events/hurt with storage lumenfuchs:flags dummy

# Enable invulnerability frames
scoreboard players remove @s[tag=lumenfuchs.dummy.is_hurt] lumenfuchs.dummy 1
scoreboard players set @s[tag=lumenfuchs.dummy.is_hurt, scores={ lumenfuchs.dummy=-1 }] lumenfuchs.dummy 3


# Reset color
execute if entity @s[tag=lumenfuchs.dummy.is_hurt] if score @s lumenfuchs.dummy matches 2 run function lumenfuchs:dummy/utils/reset_color

# Reset rotation
execute if entity @s[tag=lumenfuchs.dummy.is_hurt] if score @s lumenfuchs.dummy matches 0 run function lumenfuchs:dummy/physics/reset_limbs


# Reset invulnerability
tag @s[tag=lumenfuchs.dummy.is_hurt, scores={ lumenfuchs.dummy=..0 }] remove lumenfuchs.dummy.is_hurt
scoreboard players reset @s[scores={ lumenfuchs.dummy=..0 }] lumenfuchs.dummy


## Move

# Detect player looking at dummy
$execute if data storage lumenfuchs:flags { dummy: { freeze_when_stared: true } } at @p[distance=$(stalk_player_threshold)..$(stare_player_distance)] positioned ^ ^ ^1 facing entity @s feet positioned ^ ^ ^-1 if entity @p[distance=..0.8] run tag @s add lumenfuchs.dummy.looked_at

# Remove looking tag
execute if entity @s[tag=lumenfuchs.dummy.looked_at] at @p positioned ^ ^ ^1 facing entity @s feet positioned ^ ^ ^-1 unless entity @p[distance=..0.8] run tag @s remove lumenfuchs.dummy.looked_at


# Start walking
$execute unless entity @s[tag=lumenfuchs.dummy.is_walking] if entity @p[distance=$(stalk_player_threshold)..$(stalk_player_distance)] if predicate lumenfuchs:random/5 run tag @s add lumenfuchs.dummy.is_walking

# Stop walking
$execute if entity @s[tag=lumenfuchs.dummy.is_walking] unless entity @p[distance=$(stalk_player_threshold)..$(stalk_player_distance)] run tag @s remove lumenfuchs.dummy.is_walking
tag @s[tag=lumenfuchs.dummy.is_walking, tag=lumenfuchs.dummy.looked_at] remove lumenfuchs.dummy.is_walking


# Move towards nearest player
$execute if entity @s[tag=lumenfuchs.dummy.is_walking, tag=!lumenfuchs.dummy.looked_at] facing entity @p[distance=$(stalk_player_threshold)..$(stalk_player_distance)] feet run function lumenfuchs:dummy/physics/move { direction: "^ ^ ^0.1" }


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
		run tag @n[type=interaction, tag=lumenfuchs.entity.dummy, tag=!lumenfuchs.dummy.is_attacking, distance=..2] add lumenfuchs.dummy.is_attacking


# Run attack
execute if entity @s[tag=lumenfuchs.dummy.is_attacking] run function lumenfuchs:dummy/events/attack

# Revert attack pose
execute unless entity @s[tag=lumenfuchs.dummy.is_walking] unless entity @p[distance=..4] as @n[type=item_display, tag=lumenfuchs.dummy_limb.l_arm, distance=..3] if score @s lumenfuchs.clock matches 1.. run function lumenfuchs:dummy/utils/attack_revert