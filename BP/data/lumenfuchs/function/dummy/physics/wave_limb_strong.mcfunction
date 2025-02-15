## * AydenTFoxx @ 2025-01-15
## * 
## * Swings the limbs swiftly, akin to an entity taking damage.


# Tick clock
scoreboard players add @s[tag=!lumenfuchs.clock_invert] lumenfuchs.clock 8
scoreboard players remove @s[tag=lumenfuchs.clock_invert] lumenfuchs.clock 8

# Invert clock
tag @s[scores={ lumenfuchs.clock=16.. }] add lumenfuchs.clock_invert
tag @s[scores={ lumenfuchs.clock=..-16 }] remove lumenfuchs.clock_invert


# Set rotation
execute store result entity @s Rotation[1] float 2 run scoreboard players get @s lumenfuchs.clock

# Set interpolation
data modify entity @s interpolation_duration set value 2