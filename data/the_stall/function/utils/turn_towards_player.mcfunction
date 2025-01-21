## * AydenTFoxx @ 2025-01-15 .. 2025-01-17
## * 
## * Turns the dummy towards its target player.
## * Also plays stepping noises while walking towards that player.


# Look at player
execute if entity @p[distance=1..] as @n[type=item_display, tag=dummy_lib.dummy_limb.head, tag=the_stall.entity.stall_limb, distance=..3] at @s \
		run tp @s ~ ~ ~ facing entity @p[distance=1..] eyes

execute if entity @p[distance=1..] as @n[type=item_display, tag=dummy_lib.dummy_limb.head, tag=the_stall.entity.stall_limb, distance=..3] \
		store result entity @s Rotation[1] float 0.5 run data get entity @s Rotation[1]


# Add score
scoreboard players add @n[type=item_display, tag=dummy_lib.dummy_limb.torso, tag=the_stall.entity.stall_limb, distance=..2] dummy_lib.dummy 1

# Ignore if not in attack mode until delay is ready
# If stare_player is disabled, this is ignored entirely.
execute if data storage dummy_lib:flags { dummy: { stare_player: true } } unless entity @s[tag=dummy_lib.dummy.is_attacking] \
		unless score @n[type=item_display, tag=dummy_lib.dummy_limb.torso, tag=the_stall.entity.stall_limb, distance=..2] dummy_lib.dummy matches 10.. run return fail


# Play audio if walking
execute if entity @s[tag=dummy_lib.dummy.is_walking] if score @n[type=item_display, tag=dummy_lib.dummy_limb.torso, tag=the_stall.entity.stall_limb, distance=..2] dummy_lib.dummy matches 10.. \
		run function dummy_lib:utils/play_step_sound


# Copy player's rotation (limbs)
execute as @e[type=item_display, tag=the_stall.entity.stall_limb, tag=!dummy_lib.dummy_limb.head, distance=..3] \
		run rotate @s facing entity @p eyes

# Copy player's rotation (dummy)
rotate @s facing entity @p


# Remove Y-axis rotation
execute as @e[type=item_display, tag=dummy_lib.entity.dummy_limb, tag=the_stall.entity.stall_limb, tag=!dummy_lib.dummy_limb.head, distance=..3] \
		run data remove entity @s Rotation[1]

# Add interpolation
execute as @e[type=item_display, tag=dummy_lib.entity.dummy_limb, tag=the_stall.entity.stall_limb, tag=!dummy_lib.dummy_limb.head, distance=..3] \
		run data modify entity @s interpolation_duration set value 20


# Reset score
scoreboard players reset @n[type=item_display, tag=dummy_lib.dummy_limb.torso, tag=the_stall.entity.stall_limb, distance=..2] dummy_lib.dummy