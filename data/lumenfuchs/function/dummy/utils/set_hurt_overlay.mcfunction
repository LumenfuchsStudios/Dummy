## * AydenTFoxx @ 2025-01-31
## * 
## * Sets all limb's color to the configured "hurt overlay".


# Head
execute unless entity @s[tag=lumenfuchs.entity.seeker] positioned ~ ~1 ~ as @n[type=item_display, tag=lumenfuchs.dummy_limb.head, distance=..3] \
		if function lumenfuchs:dummy/utils/is_matching_guid run data modify entity @s item.id set string storage lumenfuchs:flags dummy.material_hurt.head

# Torso
execute positioned ~ ~1 ~ as @n[type=item_display, tag=lumenfuchs.dummy_limb.torso, distance=..3] \
		if function lumenfuchs:dummy/utils/is_matching_guid run data modify entity @s item.id set string storage lumenfuchs:flags dummy.material_hurt.torso


# Left Arm
execute positioned ~ ~1 ~ as @n[type=item_display, tag=lumenfuchs.dummy_limb.l_arm, distance=..3] \
		if function lumenfuchs:dummy/utils/is_matching_guid run data modify entity @s item.id set string storage lumenfuchs:flags dummy.material_hurt.left_arm

# Right Arm
execute positioned ~ ~1 ~ as @n[type=item_display, tag=lumenfuchs.dummy_limb.r_arm, distance=..3] \
		if function lumenfuchs:dummy/utils/is_matching_guid run data modify entity @s item.id set string storage lumenfuchs:flags dummy.material_hurt.right_arm


# Left Leg
execute positioned ~ ~1 ~ as @n[type=item_display, tag=lumenfuchs.dummy_limb.l_leg, distance=..3] \
		if function lumenfuchs:dummy/utils/is_matching_guid run data modify entity @s item.id set string storage lumenfuchs:flags dummy.material_hurt.left_leg

# Right Leg
execute positioned ~ ~1 ~ as @n[type=item_display, tag=lumenfuchs.dummy_limb.r_leg, distance=..3] \
		if function lumenfuchs:dummy/utils/is_matching_guid run data modify entity @s item.id set string storage lumenfuchs:flags dummy.material_hurt.right_leg