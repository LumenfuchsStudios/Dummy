## * AydenTFoxx @ 2025-01-15
## * 
## * Resets a limb's color to the default material.


execute positioned ~ ~1 ~ as @e[type=item_display, tag=lumenfuchs.entity.dummy_limb, distance=..3] \
		if function lumenfuchs:dummy/utils/is_matching_guid run data modify entity @s item.id set string storage lumenfuchs:flags dummy.material