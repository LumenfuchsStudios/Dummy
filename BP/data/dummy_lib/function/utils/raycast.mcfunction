## * AydenTFoxx @ 2024-12-20 .. 2025-03-02
## * 
## * Performs a raycast to detect a player's visibility through blocks.


# Debug: Display visual feedback
execute if data storage dummy_lib:flags { debug_mode: true } run particle electric_spark ~ ~ ~ 0.0 0.0 0.0 0.0 1


# Raycast to player
execute if block ~ ~ ~ #dummy_lib:transparent unless entity @p[gamemode=!spectator, distance=..1] positioned ^ ^ ^1 \
		if entity @s[distance=..16] run return run function dummy_lib:utils/raycast


# If a player is found, return 1
execute if entity @p[gamemode=!spectator, distance=..1] run return 1

# Otherwise, return 0
return 0