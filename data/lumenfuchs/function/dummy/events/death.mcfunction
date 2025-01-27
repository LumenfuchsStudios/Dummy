## * AydenTFoxx @ 2025-01-14
## * 
## * Tilts the dummy sideways then removes it, akin to DeathTime on entities.


# Reset clock (from previous wave functions)
scoreboard players reset @s[tag=!lumenfuchs.dummy.is_dead] lumenfuchs.clock

# Play audio feedback
execute unless entity @s[tag=lumenfuchs.dummy.is_dead] run playsound block.glass.break neutral @a[distance=..16] ~ ~ ~
execute unless entity @s[tag=lumenfuchs.dummy.is_dead] unless data storage lumenfuchs:flags { debug_mode: 1b } run playsound block.portal.travel neutral @a[distance=..16] ~ ~ ~ 1 0.6

# Inflict Darkness
effect give @a[distance=..16] darkness 4 0

# Add tag
tag @s[tag=!lumenfuchs.dummy.is_dead] add lumenfuchs.dummy.is_dead


# Add score
scoreboard players add @s lumenfuchs.clock 1

# Display visual feedback
particle large_smoke ~ ~0.5 ~ 0.0 0.2 0.0 0.01 4
particle portal ~ ~1 ~ 0.0 0.2 0.0 0.5 8


# Drop loot
execute if score @s lumenfuchs.clock matches 40.. if predicate lumenfuchs:random/50 run loot spawn ~ ~ ~ loot lumenfuchs:entities/dummy

# Remove dummy
execute if score @s lumenfuchs.clock matches 40.. run function lumenfuchs:dummy/events/remove