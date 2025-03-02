## * AydenTFoxx @ 2025-01-31 .. 2025-03-01
## * 
## * Sets all limb's color to the configured "hurt overlay".
## ? Limbs tagged with `dummy_lib.force_material` are ignored by this function.


# Head
$execute positioned ~ ~1 ~ as @n[type=item_display, tag=dummy_lib.dummy_limb.head, distance=..3] \
		if function dummy_lib:utils/is_matching_guid unless entity @s[tag=dummy_lib.force_material] \
		run data modify entity @s item.id set string storage $(storage) dummy.material_hurt.head

# Torso
$execute positioned ~ ~1 ~ as @n[type=item_display, tag=dummy_lib.dummy_limb.torso, distance=..3] \
		if function dummy_lib:utils/is_matching_guid unless entity @s[tag=dummy_lib.force_material] \
		run data modify entity @s item.id set string storage $(storage) dummy.material_hurt.torso


# Left Arm
$execute positioned ~ ~1 ~ as @n[type=item_display, tag=dummy_lib.dummy_limb.l_arm, distance=..3] \
		if function dummy_lib:utils/is_matching_guid unless entity @s[tag=dummy_lib.force_material] \
		run data modify entity @s item.id set string storage $(storage) dummy.material_hurt.left_arm

# Right Arm
$execute positioned ~ ~1 ~ as @n[type=item_display, tag=dummy_lib.dummy_limb.r_arm, distance=..3] \
		if function dummy_lib:utils/is_matching_guid unless entity @s[tag=dummy_lib.force_material] \
		run data modify entity @s item.id set string storage $(storage) dummy.material_hurt.right_arm


# Left Leg
$execute positioned ~ ~1 ~ as @n[type=item_display, tag=dummy_lib.dummy_limb.l_leg, distance=..3] \
		if function dummy_lib:utils/is_matching_guid unless entity @s[tag=dummy_lib.force_material] \
		run data modify entity @s item.id set string storage $(storage) dummy.material_hurt.left_leg

# Right Leg
$execute positioned ~ ~1 ~ as @n[type=item_display, tag=dummy_lib.dummy_limb.r_leg, distance=..3] \
		if function dummy_lib:utils/is_matching_guid unless entity @s[tag=dummy_lib.force_material] \
		run data modify entity @s item.id set string storage $(storage) dummy.material_hurt.right_leg