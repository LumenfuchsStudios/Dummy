# Trigger aggro from nearby mobs towards player
execute as @e[type=!#lumenfuchs:technical, distance=..16] \
		run data modify entity @s AngerTime set value 40

execute as @e[type=!#lumenfuchs:technical, distance=..16] \
		run data modify entity @s AngryAt set from entity @p[distance=..16] UUID


# Apply Darkness
effect give @a[tag=!goldark.effects.purity, distance=..24] darkness 4 1 true

# Play audio feedback
execute if predicate lumenfuchs:random/5 run playsound ambient.soul_sand_valley.mood neutral @a[distance=..16] ~ ~ ~ 0.8 0.5


# Set moody weather
weather thunder 25t

# Teleport lightning to player
execute as @e[type=lightning_bolt, distance=..128] run tp @s @p[distance=1..]