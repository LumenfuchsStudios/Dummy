## * AydenTFoxx @ 2025-01-14 .. 2025-01-27
## * 
## * Pauses the Dummy for a moment then removes it.


# Reset clock (from previous wave functions)
scoreboard players reset @s[tag=!lumenfuchs.dummy.is_dead] lumenfuchs.clock

# Play audio feedback
execute unless entity @s[tag=lumenfuchs.dummy.is_dead] run playsound block.glass.break neutral @a[distance=..16] ~ ~ ~
execute unless entity @s[tag=lumenfuchs.dummy.is_dead] run playsound block.portal.trigger neutral @a[distance=..32] ~ ~ ~ 2 1.2 0.1

# Inflict Darkness
effect give @a[distance=..16] darkness 4 0

# Add tag
tag @s[tag=!lumenfuchs.dummy.is_dead] add lumenfuchs.dummy.is_dead


# Add score
scoreboard players add @s lumenfuchs.clock 1


# R O T A T E
rotate @s ~20 ~

# Display visual feedback
particle large_smoke ^ ^0.5 ^0.5 0.0 0.2 0.0 0.01 4
particle large_smoke ^ ^0.5 ^-0.5 0.0 0.2 0.0 0.01 4
particle portal ~ ~1 ~ 0.0 0.2 0.0 0.5 8

execute if score @s lumenfuchs.clock matches 60.. run particle flash ~ ~0.8 ~


# Drop loot
execute if score @s lumenfuchs.clock matches 60.. if data storage lumenfuchs:flags { dummy: { drop_loot: true } } \
        run loot spawn ~ ~ ~ loot lumenfuchs:entities/dummy

# Remove dummy
execute if score @s lumenfuchs.clock matches 60.. run function lumenfuchs:dummy/events/remove