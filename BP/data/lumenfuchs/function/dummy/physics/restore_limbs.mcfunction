## * AydenTFoxx @ 2025-01-16 .. 2025-01-18
## * 
## * Resets arms and legs to be swinging in opposite directions.


# Restore mirrored arms
tag @n[type=item_display, tag=lumenfuchs.dummy_limb.l_arm, distance=..3] remove lumenfuchs.clock_invert
tag @n[type=item_display, tag=lumenfuchs.dummy_limb.r_arm, distance=..3] add lumenfuchs.clock_invert

# Restore mirrored legs
tag @n[type=item_display, tag=lumenfuchs.dummy_limb.l_leg, distance=..3] add lumenfuchs.clock_invert
tag @n[type=item_display, tag=lumenfuchs.dummy_limb.r_leg, distance=..3] remove lumenfuchs.clock_invert