## * AydenTFoxx @ 2025-01-14 .. 2025-01-31
## * 
## * Moves the dummy and its limbs to the desired direction.


# Teleport limbs
$execute as @e[type=item_display, tag=lumenfuchs.entity.dummy_limb, distance=..3] \
		if function lumenfuchs:dummy/utils/is_matching_guid run tp @s $(direction)

# Readjust limbs
execute as @n[type=item_display, tag=lumenfuchs.dummy_limb.head, distance=..3] if function lumenfuchs:dummy/utils/is_matching_guid at @s run tp @s ~ ~1.64 ~
execute as @n[type=item_display, tag=lumenfuchs.dummy_limb.torso, distance=..3] if function lumenfuchs:dummy/utils/is_matching_guid at @s run tp @s ~ ~1 ~

execute as @n[type=item_display, tag=lumenfuchs.dummy_limb.l_arm, distance=..3] if function lumenfuchs:dummy/utils/is_matching_guid at @s run tp @s ~ ~1.4 ~
execute as @n[type=item_display, tag=lumenfuchs.dummy_limb.r_arm, distance=..3] if function lumenfuchs:dummy/utils/is_matching_guid at @s run tp @s ~ ~1.4 ~

execute as @n[type=item_display, tag=lumenfuchs.dummy_limb.l_leg, distance=..3] if function lumenfuchs:dummy/utils/is_matching_guid at @s run tp @s ~ ~0.7 ~
execute as @n[type=item_display, tag=lumenfuchs.dummy_limb.r_leg, distance=..3] if function lumenfuchs:dummy/utils/is_matching_guid at @s run tp @s ~ ~0.7 ~


# Set interpolation
execute as @e[type=item_display, tag=lumenfuchs.entity.dummy_limb, distance=..3] \
		run data modify entity @s interpolation_duration set value 4

# Display fall particles if momentum was high
$execute if score @s lumenfuchs.momentum matches 16..37 positioned $(direction) unless block ~ ~-0.001 ~ #lumenfuchs:transparent unless block ~ ~-0.001 ~ slime_block run playsound entity.generic.small_fall hostile @a[distance=..32] ~ ~ ~ 1 0.8 0.1
$execute if score @s lumenfuchs.momentum matches 16..37 positioned $(direction) unless block ~ ~-0.001 ~ #lumenfuchs:transparent if block ~ ~-0.001 ~ slime_block run playsound entity.wind_charge.wind_burst hostile @a[distance=..32] ~ ~ ~ 1 0.8 0.1
$execute if score @s lumenfuchs.momentum matches 16..44 positioned $(direction) unless block ~ ~-0.001 ~ #lumenfuchs:transparent run particle gust_emitter_small ~ ~1 ~ 0.1 0.2 0.1 0.5 1

$execute if score @s lumenfuchs.momentum matches 38.. positioned $(direction) unless block ~ ~-0.001 ~ #lumenfuchs:transparent run playsound entity.generic.big_fall hostile @a[distance=..32] ~ ~ ~ 1 0.8 0.1
$execute if score @s lumenfuchs.momentum matches 45.. positioned $(direction) unless block ~ ~-0.001 ~ #lumenfuchs:transparent run particle explosion_emitter ~ ~1 ~ 0.0 0.0 0.0 0.0 1

# Reset acceleration
execute unless block ~ ~-0.1 ~ #lumenfuchs:transparent run scoreboard players reset @s lumenfuchs.momentum


# Teleport self
$tp @s $(direction)

# Debug: Display visual feedback
execute if data storage lumenfuchs:flags { debug_mode: 1b } run particle portal ~ ~ ~ 0.0 0.0 0.0 1 3