## * AydenTFoxx @ 2025-01-15 .. 2025-03-04
## * 
## * Turns the dummy towards its target player.
## * Also plays stepping noises while walking towards that player.


# Look at player
execute if entity @p[gamemode=!spectator, distance=1..] as @n[type=item_display, tag=dummy_lib.dummy_limb.head, distance=..3] at @s \
		run rotate @s facing entity @p[gamemode=!spectator, distance=1..] eyes

execute if entity @p[gamemode=!spectator, distance=1..] as @n[type=item_display, tag=dummy_lib.dummy_limb.head, distance=..3] \
		store result entity @s Rotation[1] float 0.5 run data get entity @s Rotation[1]


# Add score
scoreboard players add @n[type=item_display, tag=dummy_lib.dummy_limb.torso, distance=..3] dummy_lib.dummy 1

# Ignore if not in attack mode until delay is ready
# If stare_player is disabled, this is ignored entirely.
execute if data storage lumenfuchs:flags { dummy: { stare_player: true } } unless entity @s[tag=lumenfuchs.dummy.is_attacking] \
		unless score @n[type=item_display, tag=dummy_lib.dummy_limb.torso, distance=..3] dummy_lib.dummy matches 10.. run return fail


# Play audio if walking
execute if entity @s[tag=dummy_lib.dummy.is_walking] if score @n[type=item_display, tag=dummy_lib.dummy_limb.torso, distance=..3] dummy_lib.dummy matches 10.. \
		run function dummy_lib:utils/play_step_noise


## Copy player's rotation

# Limbs
execute as @e[type=item_display, tag=dummy_lib.entity.dummy_limb, tag=!dummy_lib.dummy_limb.head, distance=..3] \
		if function dummy_lib:utils/is_matching_guid run rotate @s facing entity @p[gamemode=!spectator] eyes

# Dummy
rotate @s facing entity @p[gamemode=!spectator]

## Remove Y-axis rotation

# Limbs
execute as @e[type=item_display, tag=dummy_lib.entity.dummy_limb, tag=!dummy_lib.dummy_limb.head, distance=..3] \
		run data remove entity @s Rotation[1]

# Dummy
execute if entity @n[type=!#dummy_lib:technical, type=!player, distance=..32] run data remove entity @s Rotation[1]


# Add interpolation
execute as @e[type=item_display, tag=dummy_lib.entity.dummy_limb, tag=!dummy_lib.dummy_limb.head, distance=..3] \
		run data modify entity @s interpolation_duration set value 20

# Reset score
scoreboard players reset @n[type=item_display, tag=dummy_lib.dummy_limb.torso, distance=..3] dummy_lib.dummy