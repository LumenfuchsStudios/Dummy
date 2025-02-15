## * AydenTFoxx @ 2025-01-15
## * 
## * Swings the limbs slowly, akin to an entity walking.


# Tick clock
scoreboard players add @s[tag=!lumenfuchs.clock_invert] lumenfuchs.clock 5
scoreboard players remove @s[tag=lumenfuchs.clock_invert] lumenfuchs.clock 5

# Invert clock
tag @s[scores={ lumenfuchs.clock=20.. }] add lumenfuchs.clock_invert
tag @s[scores={ lumenfuchs.clock=..-20 }] remove lumenfuchs.clock_invert


# Set rotation
execute store result entity @s Rotation[1] float 1.5 run scoreboard players get @s lumenfuchs.clock

# Set interpolation
data modify entity @s interpolation_duration set value 2