# Teleport limbs
$execute as @e[type=item_display, tag=lumenfuchs.entity.dummy_limb, distance=..3] \
		if function lumenfuchs:dummy/utils/is_matching_guid run tp @s $(direction)

# Readjust limbs
execute as @n[type=item_display, tag=lumenfuchs.dummy_limb.head, distance=..3] if function lumenfuchs:dummy/utils/is_matching_guid at @s run tp @s ~ ~1.64 ~
execute as @n[type=item_display, tag=lumenfuchs.dummy_limb.torso, distance=..3] if function lumenfuchs:dummy/utils/is_matching_guid at @s run tp @s ~ ~1 ~

execute as @n[type=item_display, tag=lumenfuchs.dummy_limb.l_arm, distance=..3] if function lumenfuchs:dummy/utils/is_matching_guid at @s run tp @s ~ ~1.4 ~
execute as @n[type=item_display, tag=lumenfuchs.dummy_limb.r_arm, distance=..3] if function lumenfuchs:dummy/utils/is_matching_guid at @s run tp @s ~ ~1.4 ~

execute as @n[type=item_display, tag=lumenfuchs.dummy_limb.l_leg, distance=..3] if function lumenfuchs:dummy/utils/is_matching_guid at @s run tp @s ~ ~0.7 ~
execute as @n[type=item_display, tag=lumenfuchs.dummy_limb.r_leg, distance=..3] if function lumenfuchs:dummy/utils/is_matching_guid at @s run tp @s ~ ~0.7 ~


# Set interpolation
execute as @e[type=item_display, tag=lumenfuchs.entity.dummy_limb, distance=..3] \
		run data modify entity @s interpolation_duration set value 4

# Reset acceleration
scoreboard players reset @s lumenfuchs.momentum


# Teleport self
$tp @s $(direction)

# Debug: Display visual feedback
execute if data storage lumenfuchs:flags { debug_mode: 1b } run particle portal ~ ~ ~ 0.0 0.0 0.0 1 3