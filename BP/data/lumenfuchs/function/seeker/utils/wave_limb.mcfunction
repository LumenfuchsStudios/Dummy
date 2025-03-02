## * AydenTFoxx @ 2025-01-27 .. 2025-03-01
## * 
## * Swings the limbs somewhat swiftly, resembling more an actual entity's walk cycle.


# Tick clock
scoreboard players add @s[tag=!dummy_lib.clock_invert] dummy_lib.clock 8
scoreboard players remove @s[tag=dummy_lib.clock_invert] dummy_lib.clock 8

# Invert clock
tag @s[scores={ dummy_lib.clock=24.. }] add dummy_lib.clock_invert
tag @s[scores={ dummy_lib.clock=..-24 }] remove dummy_lib.clock_invert


# Set rotation
execute store result entity @s Rotation[1] float 1.5 run scoreboard players get @s dummy_lib.clock

# Set interpolation
data modify entity @s interpolation_duration set value 2