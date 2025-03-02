## * AydenTFoxx @ 2025-01-15 .. 2025-03-01
## * 
## * Resets all limbs' materials to their respective configured setting.
## ? Limbs tagged with `dummy_lib.force_material` are ignored by this function.

## ? Function Arguments:
#? storage: The namespaced storage to read the datapack's settings from.


# Head
$execute positioned ~ ~1 ~ as @n[type=item_display, tag=dummy_lib.dummy_limb.head, distance=..3] \
		if function dummy_lib:utils/is_matching_guid unless entity @s[tag=dummy_lib.force_material] \
		run data modify entity @s item.id set string storage $(storage) dummy.material.head

# Torso
$execute positioned ~ ~1 ~ as @n[type=item_display, tag=dummy_lib.dummy_limb.torso, distance=..3] \
		if function dummy_lib:utils/is_matching_guid unless entity @s[tag=dummy_lib.force_material] \
		run data modify entity @s item.id set string storage $(storage) dummy.material.torso


# Left Arm
$execute positioned ~ ~1 ~ as @n[type=item_display, tag=dummy_lib.dummy_limb.l_arm, distance=..3] \
		if function dummy_lib:utils/is_matching_guid unless entity @s[tag=dummy_lib.force_material] \
		run data modify entity @s item.id set string storage $(storage) dummy.material.left_arm

# Right Arm
$execute positioned ~ ~1 ~ as @n[type=item_display, tag=dummy_lib.dummy_limb.r_arm, distance=..3] \
		if function dummy_lib:utils/is_matching_guid unless entity @s[tag=dummy_lib.force_material] \
		run data modify entity @s item.id set string storage $(storage) dummy.material.right_arm


# Left Leg
$execute positioned ~ ~1 ~ as @n[type=item_display, tag=dummy_lib.dummy_limb.l_leg, distance=..3] \
		if function dummy_lib:utils/is_matching_guid unless entity @s[tag=dummy_lib.force_material] \
		run data modify entity @s item.id set string storage $(storage) dummy.material.left_leg

# Right Leg
$execute positioned ~ ~1 ~ as @n[type=item_display, tag=dummy_lib.dummy_limb.r_leg, distance=..3] \
		if function dummy_lib:utils/is_matching_guid unless entity @s[tag=dummy_lib.force_material] \
		run data modify entity @s item.id set string storage $(storage) dummy.material.right_leg