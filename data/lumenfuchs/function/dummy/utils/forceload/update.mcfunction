## * AydenTFoxx @ 2025-01-30 .. 2025-01-31
## * 
## * Updates the forceloading entity's behavior.


## DEBUG: Display position
execute if data storage lumenfuchs:flags { debug_mode: true } run particle end_rod ~ ~1 ~ 0.0 0.0 0.0 0.01 1 force

## DEBUG: Warn if unloaded
execute unless loaded ~ ~ ~ if data storage lumenfuchs:flags { debug_mode: true } run particle portal ~ ~1 ~ 0.1 0.1 0.1 1 4 force



# Tick clock
scoreboard players add @s lumenfuchs.clock 1

# Remove entity
execute if score @s lumenfuchs.clock matches 1200.. run function lumenfuchs:dummy/utils/forceload/remove