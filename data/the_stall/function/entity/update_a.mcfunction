## * AydenTFoxx @ 2025-01-16 .. 2025-01-17
## * 
## * Updates the dummy with entity-like and custom behavior.


## # PHYSICS

# Apply gravity
execute if loaded ~ ~ ~ if block ~ ~-0.1 ~ #dummy_lib:transparent run function dummy_lib:physics/accelerate
execute if loaded ~ ~ ~ if score @s dummy_lib.momentum matches -20..20 run function dummy_lib:physics/accelerate

# Apply upwards momentum (Slime Block)
execute if loaded ~ ~ ~ if block ~ ~ ~ slime_block run scoreboard players set @s dummy_lib.momentum -10


# Raise from ground
execute if loaded ~ ~ ~ unless block ~ ~ ~ #dummy_lib:transparent unless block ~ ~ ~ slime_block run function dummy_lib:physics/move { namespace: "the_stall", direction: "~ ~0.1 ~" }

# Reset gravity
execute if loaded ~ ~ ~ unless block ~ ~-0.1 ~ #dummy_lib:transparent run scoreboard players reset @s dummy_lib.momentum


# Remove forceload
execute if data storage dummy_lib:flags { the_stall: { forceload_chunks: true } } unless loaded ~ ~ ~ run forceload remove ~-32 ~-32 ~32 ~32
execute if data storage dummy_lib:flags { the_stall: { forceload_chunks: true } } if loaded ~ ~ ~ unless loaded ^ ^ ^-8 run forceload remove ~-32 ~-32 ~32 ~32

## Ignore if dead
execute if loaded ~ ~ ~ if entity @s[tag=dummy_lib.dummy.is_dead] run return run function the_stall:events/death

# Add forceload
execute if data storage dummy_lib:flags { the_stall: { forceload_chunks: true } } unless loaded ~ ~ ~ run forceload add ~ ~ ~ ~