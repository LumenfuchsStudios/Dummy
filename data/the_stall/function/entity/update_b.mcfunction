## * AydenTFoxx @ 2025-01-13 .. 2025-01-24
## * 
## * Updates the dummy with entity-like and custom behavior.


## # AUDIO-VISUAL

# Turn to player
$execute if data storage dummy_lib:flags { the_stall: { stare_player: true } } if entity @p[distance=0.5..$(stare_player_distance)] run function dummy_lib:dummy/utils/turn_towards_player

# Turn forwards
execute if data storage dummy_lib:flags { the_stall: { stalk_player: true, stare_player: false } } if entity @s[tag=dummy_lib.dummy.is_walking] anchored eyes run function the_stall:utils/turn_towards_player
$execute if data storage dummy_lib:flags { the_stall: { stalk_player: true } } unless entity @p[distance=..$(stare_player_distance)] anchored eyes run rotate @s facing ^ ^ ^1


# Play ambience (presence)
$execute if predicate dummy_lib:random/1 as @a[distance=..$(stare_player_distance)] \
		run playsound $(ambience_presence) hostile @s ^ ^ ^ 2 0.5 0.1

# Play ambience (target)
$execute if predicate dummy_lib:random/5 as @p[distance=..$(stalk_player_distance)] \
		run playsound $(ambience_target) hostile @s ^ ^ ^4 1 1.5 0.2


## # BEHAVIOR

# Run default behaviors
function dummy_lib:entity/update_b { namespace: "the_stall" }


## Move

# Detect player looking at dummy
$execute if data storage dummy_lib:flags { the_stall: { freeze_when_stared: true } } at @p[distance=$(stalk_player_threshold)..$(stare_player_distance)] positioned ^ ^ ^1 facing entity @s feet positioned ^ ^ ^-1 if entity @p[distance=..0.8] run tag @s add dummy_lib.dummy.looked_at

# Remove looking tag
execute if entity @s[tag=dummy_lib.dummy.looked_at] at @p positioned ^ ^ ^1 facing entity @s feet positioned ^ ^ ^-1 unless entity @p[distance=..0.8] run tag @s remove dummy_lib.dummy.looked_at


# Start walking
$execute unless entity @s[tag=dummy_lib.dummy.is_walking] if entity @p[distance=$(stalk_player_threshold)..$(stalk_player_distance)] positioned ^ ^ ^0.2 unless predicate dummy_lib:block/stop_dummy_move if predicate dummy_lib:random/5 run tag @s add dummy_lib.dummy.is_walking

# Stop walking
$execute if entity @s[tag=dummy_lib.dummy.is_walking] unless entity @p[distance=$(stalk_player_threshold)..$(stalk_player_distance)] run function dummy_lib:physics/reset_limbs
$execute if entity @s[tag=dummy_lib.dummy.is_walking] unless entity @p[distance=$(stalk_player_threshold)..$(stalk_player_distance)] run tag @s remove dummy_lib.dummy.is_walking

execute if entity @s[tag=dummy_lib.dummy.is_walking] positioned ^ ^ ^0.2 if predicate the_stall:block/stop_dummy_move run tag @s remove dummy_lib.dummy.is_walking
tag @s[tag=dummy_lib.dummy.is_walking, tag=dummy_lib.dummy.looked_at] remove dummy_lib.dummy.is_walking


# Move towards nearest player
execute if entity @s[tag=dummy_lib.dummy.is_walking, tag=!dummy_lib.dummy.looked_at] positioned ^ ^ ^0.2 unless predicate the_stall:block/stop_dummy_move positioned ^ ^ ^-0.2 run function dummy_lib:physics/move { namespace: "the_stall", direction: "^ ^ ^0.1" }


## Attack

# Harm non-player entities
execute if data storage dummy_lib:flags { the_stall: { harm_on_touch: true } } run damage @n[type=!#dummy_lib:technical, distance=..1] 2 thorns by @s


# Prepare attack
$execute if data storage dummy_lib:flags { the_stall: { attack_player: true } } unless entity @s[tag=dummy_lib.dummy.is_walking] if entity @p[distance=..$(attack_player_distance)] \
		as @n[type=item_display, tag=dummy_lib.dummy_limb.l_arm, tag=the_stall.entity.stall_limb, distance=..3] \
		run function the_stall:utils/attack_prepare

# Add tag
$execute if data storage dummy_lib:flags { the_stall: { attack_player: true } } unless entity @s[tag=dummy_lib.dummy.is_walking] if entity @p[distance=..$(attack_player_distance)] \
		as @n[type=item_display, tag=dummy_lib.dummy_limb.l_arm, tag=the_stall.entity.stall_limb, distance=..3] if score @s dummy_lib.clock matches 100.. \
		run tag @n[type=interaction, tag=dummy_lib.entity.dummy, tag=!dummy_lib.dummy.is_attacking, distance=..2] add dummy_lib.dummy.is_attacking


# Run attack
execute if entity @s[tag=dummy_lib.dummy.is_attacking] run function the_stall:events/attack

# Revert attack pose
$execute unless entity @s[tag=dummy_lib.dummy.is_walking] unless entity @p[distance=..$(attack_player_distance)] as @n[type=item_display, tag=dummy_lib.dummy_limb.l_arm, distance=..3] if score @s dummy_lib.clock matches 1.. run function the_stall:utils/attack_revert