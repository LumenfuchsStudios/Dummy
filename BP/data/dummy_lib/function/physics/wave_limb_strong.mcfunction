## * AydenTFoxx @ 2025-01-15 .. 2025-02-20
## * 
## * Swings the limbs swiftly, akin to an entity taking damage.


# Tick clock
scoreboard players add @s[tag=!dummy_lib.clock_invert] dummy_lib.clock 8
scoreboard players remove @s[tag=dummy_lib.clock_invert] dummy_lib.clock 8

# Invert clock
tag @s[scores={ dummy_lib.clock=24.. }] add dummy_lib.clock_invert
tag @s[scores={ dummy_lib.clock=..-24 }] remove dummy_lib.clock_invert


# Set rotation
execute store result entity @s Rotation[1] float 2 run scoreboard players get @s dummy_lib.clock

# Set interpolation
data modify entity @s interpolation_duration set value 8