## * AydenTFoxx @ 2025-01-30 .. 2025-04-08
## * 
## * Updates the forceloading entity's behavior.


## DEBUG: Display position
execute if data storage dummy_lib:flags { debug_mode: true } run particle end_rod ~ ~1 ~ 0.0 0.0 0.0 0.01 1 force

## DEBUG: Warn if unloaded
execute unless loaded ~ ~ ~ if data storage dummy_lib:flags { debug_mode: true } run particle portal ~ ~1 ~ 0.1 0.1 0.1 1 4 force



# Tick clock
scoreboard players operation @s dummy_lib.clock += #dummy_lib_tick_rate_a dummy_lib.dummy

# Remove entity
execute if score @s dummy_lib.clock matches 2400.. run function dummy_lib:utils/forceload/remove