## * AydenTFoxx @ 2025-01-15
## * 
## * Resets the swinging rotation from the limb.


# Reset rotation
execute as @e[type=item_display, tag=lumenfuchs.entity.dummy_limb, tag=!lumenfuchs.dummy_limb.torso, tag=!lumenfuchs.dummy_limb.head, distance=..3] \
		if function lumenfuchs:dummy/utils/is_matching_guid run data modify entity @s Rotation[1] set value 0.0f

# Reset score
scoreboard players reset @e[type=item_display, tag=lumenfuchs.entity.dummy_limb, tag=!lumenfuchs.dummy_limb.torso, tag=!lumenfuchs.dummy_limb.head, distance=..3] lumenfuchs.clock


# Reset arms
function lumenfuchs:dummy/physics/restore_arms