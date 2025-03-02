## * AydenTFoxx @ 2025-01-15 .. 2025-02-20
## * 
## * Resets the swinging rotation from the limb.


# Reset rotation
execute as @e[type=item_display, tag=dummy_lib.entity.dummy_limb, tag=!dummy_lib.dummy_limb.torso, tag=!dummy_lib.dummy_limb.head, distance=..3] \
		if function dummy_lib:utils/is_matching_guid run data modify entity @s Rotation[1] set value 0.0f

# Reset score
scoreboard players reset @e[type=item_display, tag=dummy_lib.entity.dummy_limb, tag=!dummy_lib.dummy_limb.torso, tag=!dummy_lib.dummy_limb.head, distance=..3] dummy_lib.clock


# Reset arms and legs' mirroring
function dummy_lib:physics/restore_limbs