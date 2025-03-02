## * AydenTFoxx @ 2025-01-14 .. 2025-02-20
## * 
## * Removes the dummy and its limb entities.


# Display visual feedback
particle poof ~ ~1 ~ 0.15 0.3 0.15 0.01 16


# Remove limbs
execute as @e[type=item_display, tag=dummy_lib.entity.dummy_limb, distance=..4] if function dummy_lib:utils/is_matching_guid run kill @s

# Remove self
kill @s[type=!player]