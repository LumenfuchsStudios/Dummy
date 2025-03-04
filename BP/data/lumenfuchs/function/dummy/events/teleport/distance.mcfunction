## * AydenTFoxx @ 2025-03-04
## * 
## * "Respawns" the Dummy near a random/nearest player, with the same health it had beforehand.
## * Used whenever the Dummy is stuck and cannot target any player within its staring range.


## Ignore with a chance if prep hasn't fully begun yet
execute unless score @s dummy_lib.dummy matches 20.. if predicate dummy_lib:random/50 run return fail


# Display Warp indicator
particle soul_fire_flame ~ ~1.5 ~ 0.05 0.05 0.05 0.05 6 force

# Prepare warp
function lumenfuchs:dummy/events/teleport/_prepare


# Spawn anchor
execute if score @s dummy_lib.dummy matches 200.. at @p[gamemode=!spectator] run function lumenfuchs:dummy/events/spawn/try_spawning


# Set health of new Dummy
execute if score @s dummy_lib.dummy matches 200.. at @p[gamemode=!spectator] at @n[type=marker, tag=lumenfuchs.entity.dummy_spawn, distance=..32] \
		if block ~ ~ ~ #dummy_lib:transparent if block ~ ~1 ~ #dummy_lib:transparent unless block ~ ~-1 ~ #dummy_lib:transparent \
		run scoreboard players operation @n[type=marker, tag=lumenfuchs.entity.dummy_spawn, distance=..1] dummy_lib.health = @s dummy_lib.health

# Add force-spawn tag
execute if score @s dummy_lib.dummy matches 200.. at @p[gamemode=!spectator] as @n[type=marker, tag=lumenfuchs.entity.dummy_spawn, distance=..32] \
		if score @s dummy_lib.health matches 1.. run tag @s add lumenfuchs.dummy_spawn.force_spawn


# Remove self
execute if score @s dummy_lib.dummy matches 200.. at @p[gamemode=!spectator] at @n[type=marker, tag=lumenfuchs.entity.dummy_spawn, distance=..32] \
		if entity @n[type=marker, tag=lumenfuchs.entity.dummy_spawn, tag=lumenfuchs.dummy_spawn.force_spawn, distance=..1] \
		run kill @s