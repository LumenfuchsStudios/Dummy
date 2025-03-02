## * AydenTFoxx @ 2025-01-16 .. 2025-02-20
## * 
## * Resets arms and legs to be swinging in opposite directions.


# Restore mirrored arms
tag @n[type=item_display, tag=dummy_lib.dummy_limb.l_arm, distance=..3] remove dummy_lib.clock_invert
tag @n[type=item_display, tag=dummy_lib.dummy_limb.r_arm, distance=..3] add dummy_lib.clock_invert

# Restore mirrored legs
tag @n[type=item_display, tag=dummy_lib.dummy_limb.l_leg, distance=..3] add dummy_lib.clock_invert
tag @n[type=item_display, tag=dummy_lib.dummy_limb.r_leg, distance=..3] remove dummy_lib.clock_invert