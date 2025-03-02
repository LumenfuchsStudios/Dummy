## * AydenTFoxx @ 2025-01-14 .. 2025-03-01
## * 
## * Moves the dummy entity and its limbs to the desired direction.

## ? Function Arguments:
#? direction: The relative or absolute direction to move the dummy entity to.


# Teleport limbs
$execute as @e[type=item_display, tag=dummy_lib.entity.dummy_limb, distance=..3] \
		if function dummy_lib:utils/is_matching_guid run tp @s $(direction)

# Readjust limbs
execute as @n[type=item_display, tag=dummy_lib.dummy_limb.head, distance=..3] if function dummy_lib:utils/is_matching_guid at @s run tp @s ~ ~1.64 ~
execute as @n[type=item_display, tag=dummy_lib.dummy_limb.torso, distance=..3] if function dummy_lib:utils/is_matching_guid at @s run tp @s ~ ~1 ~

execute as @n[type=item_display, tag=dummy_lib.dummy_limb.l_arm, distance=..3] if function dummy_lib:utils/is_matching_guid at @s run tp @s ~ ~1.4 ~
execute as @n[type=item_display, tag=dummy_lib.dummy_limb.r_arm, distance=..3] if function dummy_lib:utils/is_matching_guid at @s run tp @s ~ ~1.4 ~

execute as @n[type=item_display, tag=dummy_lib.dummy_limb.l_leg, distance=..3] if function dummy_lib:utils/is_matching_guid at @s run tp @s ~ ~0.7 ~
execute as @n[type=item_display, tag=dummy_lib.dummy_limb.r_leg, distance=..3] if function dummy_lib:utils/is_matching_guid at @s run tp @s ~ ~0.7 ~


# Set interpolation
execute as @e[type=item_display, tag=dummy_lib.entity.dummy_limb, distance=..3] \
		run data modify entity @s interpolation_duration set value 4

# Display fall particles if momentum was high
$execute if score @s dummy_lib.momentum matches 16..37 positioned $(direction) unless block ~ ~-0.001 ~ #dummy_lib:transparent unless block ~ ~-0.001 ~ slime_block run playsound entity.generic.small_fall hostile @a[distance=..32] ~ ~ ~ 1 0.8 0.1
$execute if score @s dummy_lib.momentum matches 16..37 positioned $(direction) unless block ~ ~-0.001 ~ #dummy_lib:transparent if block ~ ~-0.001 ~ slime_block run playsound entity.wind_charge.wind_burst hostile @a[distance=..32] ~ ~ ~ 1 0.8 0.1
$execute if score @s dummy_lib.momentum matches 16..44 positioned $(direction) unless block ~ ~-0.001 ~ #dummy_lib:transparent run particle gust_emitter_small ~ ~1 ~ 0.1 0.2 0.1 0.5 1

$execute if score @s dummy_lib.momentum matches 38.. positioned $(direction) unless block ~ ~-0.001 ~ #dummy_lib:transparent run playsound entity.generic.big_fall hostile @a[distance=..32] ~ ~ ~ 1 0.8 0.1
$execute if score @s dummy_lib.momentum matches 45.. positioned $(direction) unless block ~ ~-0.001 ~ #dummy_lib:transparent run particle explosion_emitter ~ ~1 ~ 0.0 0.0 0.0 0.0 1

# Reset acceleration
execute unless block ~ ~-0.1 ~ #dummy_lib:transparent run scoreboard players reset @s dummy_lib.momentum

# Reset limbs
#execute unless block ~ ~-0.1 ~ #dummy_lib:transparent run function dummy_lib:physics/restore_limbs


# Teleport self
$tp @s $(direction)

# Debug: Display visual feedback
execute if data storage dummy_lib:flags { debug_mode: 1b } run particle portal ~ ~ ~ 0.0 0.0 0.0 1 3