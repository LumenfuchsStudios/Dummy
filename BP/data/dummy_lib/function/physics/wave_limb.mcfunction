## * AydenTFoxx @ 2025-01-15 .. 2025-02-20
## * 
## * Swings the limbs slowly, akin to an entity walking.


# Tick clock
scoreboard players add @s[tag=!dummy_lib.clock_invert] dummy_lib.clock 5
scoreboard players remove @s[tag=dummy_lib.clock_invert] dummy_lib.clock 5

# Invert clock
tag @s[scores={ dummy_lib.clock=20.. }] add dummy_lib.clock_invert
tag @s[scores={ dummy_lib.clock=..-20 }] remove dummy_lib.clock_invert


# Set rotation
execute store result entity @s Rotation[1] float 1.5 run scoreboard players get @s dummy_lib.clock

# Set interpolation
data modify entity @s interpolation_duration set value 2