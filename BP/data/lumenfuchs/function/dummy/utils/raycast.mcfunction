## * AydenTFoxx @ 2024-12-20 .. 2025-01-15
## * 
## * Performs a raycast to detect a player's visibility through blocks.


# Debug: Display visual feedback
execute if data storage lumenfuchs:flags { debug_mode: true } run particle electric_spark ~ ~ ~ 0.0 0.0 0.0 0.0 1


# Raycast to player
execute if block ~ ~ ~ #lumenfuchs:transparent unless entity @p[distance=..1] positioned ^ ^ ^1 \
		if entity @s[distance=..16] run return run function lumenfuchs:dummy/utils/raycast


# If a player is found, return 1
execute if entity @p[distance=..1] run return 1

# Otherwise, return 0
return 0