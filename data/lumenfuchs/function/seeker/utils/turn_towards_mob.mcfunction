## * AydenTFoxx @ 2025-01-27 .. 2025-01-28
## * 
## * Turns the Seeker towards its target mob.
## * Also plays stepping noises while walking towards that mob.


# Look at mob
execute if entity @n[type=!#lumenfuchs:technical, type=!player, distance=1..] as @n[type=item_display, tag=lumenfuchs.dummy_limb.head, distance=..3] at @s \
		run tp @s ~ ~ ~ facing entity @n[type=!#lumenfuchs:technical, type=!player, distance=1..] eyes

execute if entity @n[type=!#lumenfuchs:technical, type=!player, distance=1..] as @n[type=item_display, tag=lumenfuchs.dummy_limb.head, distance=..3] \
		store result entity @s Rotation[1] float 0.5 run data get entity @s Rotation[1]


# Add score
scoreboard players add @n[type=item_display, tag=lumenfuchs.dummy_limb.torso, distance=..3] lumenfuchs.dummy 1

# Ignore if not in attack mode until delay is ready
# If stare_player is disabled, this is ignored entirely.
execute if data storage lumenfuchs:flags { dummy: { stare_player: true } } unless entity @s[tag=lumenfuchs.dummy.is_attacking] \
		unless score @n[type=item_display, tag=lumenfuchs.dummy_limb.torso, distance=..3] lumenfuchs.dummy matches 10.. run return fail


# Play audio if walking
execute if entity @s[tag=lumenfuchs.dummy.is_walking] if score @n[type=item_display, tag=lumenfuchs.dummy_limb.torso, distance=..3] lumenfuchs.dummy matches 10.. \
		run function lumenfuchs:dummy/utils/play_step_noise


## Copy mob's rotation

# Limbs
execute as @e[type=item_display, tag=lumenfuchs.entity.dummy_limb, tag=!lumenfuchs.dummy_limb.head, distance=..3] \
		if function lumenfuchs:dummy/utils/is_matching_guid run rotate @s facing entity @n[type=!#lumenfuchs:technical, type=!player, distance=..128] eyes

# Seeker
rotate @s facing entity @n[type=!#lumenfuchs:technical, type=!player, distance=..128]

## Remove Y-axis rotation

# Limbs
execute as @e[type=item_display, tag=lumenfuchs.entity.dummy_limb, tag=!lumenfuchs.dummy_limb.head, distance=..3] \
		run data remove entity @s Rotation[1]

# Seeker
execute if entity @n[type=!#lumenfuchs:technical, type=!player, distance=..32] run data remove entity @s Rotation[1]


# Add interpolation
execute as @e[type=item_display, tag=lumenfuchs.entity.dummy_limb, tag=!lumenfuchs.dummy_limb.head, distance=..3] \
		run data modify entity @s interpolation_duration set value 20

# Reset score
scoreboard players reset @n[type=item_display, tag=lumenfuchs.dummy_limb.torso, distance=..3] lumenfuchs.dummy