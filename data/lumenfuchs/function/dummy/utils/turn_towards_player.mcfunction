# Look at player
execute if entity @p[distance=1..] as @n[type=item_display, tag=lumenfuchs.dummy_limb.head, distance=..3] at @s \
		run tp @s ~ ~ ~ facing entity @p[distance=1..] eyes

execute if entity @p[distance=1..] as @n[type=item_display, tag=lumenfuchs.dummy_limb.head, distance=..3] \
		store result entity @s Rotation[1] float 0.5 run data get entity @s Rotation[1]


# Add score
scoreboard players add @n[type=item_display, tag=lumenfuchs.dummy_limb.torso, distance=..2] lumenfuchs.dummy 1

# Ignore if not in attack mode until delay is ready
execute unless score @n[type=item_display, tag=lumenfuchs.dummy_limb.torso, distance=..2] lumenfuchs.dummy matches 10.. \
		unless entity @s[tag=lumenfuchs.dummy.is_attacking] run return fail


# Play audio if walking
execute if entity @s[tag=lumenfuchs.dummy.is_walking] run function lumenfuchs:dummy/utils/play_step_noise


# Copy player's rotation
execute as @e[type=item_display, tag=lumenfuchs.entity.dummy_limb, tag=!lumenfuchs.dummy_limb.head, distance=..3] \
		run rotate @s facing entity @p eyes

# Remove Y-axis rotation
execute as @e[type=item_display, tag=lumenfuchs.entity.dummy_limb, tag=!lumenfuchs.dummy_limb.head, distance=..3] \
		run data remove entity @s Rotation[1]

# Add interpolation
execute as @e[type=item_display, tag=lumenfuchs.entity.dummy_limb, tag=!lumenfuchs.dummy_limb.head, distance=..3] \
		run data modify entity @s interpolation_duration set value 20

# Reset score
scoreboard players reset @n[type=item_display, tag=lumenfuchs.dummy_limb.torso, distance=..2] lumenfuchs.dummy