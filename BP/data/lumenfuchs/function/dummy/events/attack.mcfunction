## * AydenTFoxx @ 2025-01-15 .. 2025-01-30
## * 
## * Performs the dummy's signature ability.


# Trigger aggro from nearby mobs towards player
execute as @e[type=!#lumenfuchs:technical, distance=..32] \
		run data modify entity @s AngerTime set value 40

execute as @e[type=!#lumenfuchs:technical, distance=..32] \
		run data modify entity @s AngryAt set from entity @p[distance=..16] UUID


# Regain lost health, if any
execute unless score @s lumenfuchs.health matches 8 if predicate lumenfuchs:random/1 \
		run scoreboard players add @s lumenfuchs.health 1


# Apply Darkness
effect give @a[tag=!goldark.effects.purity, distance=..24] darkness 4 1 true

# Play audio feedback
execute if predicate lumenfuchs:random/5 run playsound ambient.soul_sand_valley.mood neutral @a[distance=..16] ~ ~ ~ 0.8 0.5


# Set moody weather
weather thunder 25t

# Teleport lightning to player
tp @e[type=lightning_bolt, distance=..128] @p[distance=1..]