## * AydenTFoxx @ 2025-01-16 .. 2025-01-17
## * 
## * Updates the dummy with entity-like and custom behavior.


## # PHYSICS

# Apply gravity
execute if loaded ~ ~ ~ if block ~ ~-0.1 ~ #lumenfuchs:transparent run function lumenfuchs:dummy/physics/accelerate
execute if loaded ~ ~ ~ if score @s lumenfuchs.momentum matches -20..20 run function lumenfuchs:dummy/physics/accelerate

# Apply upwards momentum (Slime Block)
execute if loaded ~ ~ ~ if block ~ ~ ~ slime_block run scoreboard players set @s lumenfuchs.momentum -10


# Raise from ground
execute if loaded ~ ~ ~ unless block ~ ~ ~ #lumenfuchs:transparent unless block ~ ~ ~ slime_block run function lumenfuchs:dummy/physics/move { direction: "~ ~0.1 ~" }

# Reset gravity
execute if loaded ~ ~ ~ unless block ~ ~-0.1 ~ #lumenfuchs:transparent run scoreboard players reset @s lumenfuchs.momentum


# Remove forceload
execute if data storage lumenfuchs:flags { dummy: { forceload_chunks: true } } unless loaded ~ ~ ~ run forceload remove ~-17 ~-17 ~17 ~17

## Ignore if dead
execute if loaded ~ ~ ~ if entity @s[tag=lumenfuchs.dummy.is_dead] run return run function lumenfuchs:dummy/events/death

# Add forceload
execute if data storage lumenfuchs:flags { dummy: { forceload_chunks: true } } unless loaded ~ ~ ~ run forceload add ~ ~ ~ ~