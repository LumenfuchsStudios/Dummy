## * AydenTFoxx @ 2025-01-14 .. 2025-04-01
## * 
## * Pauses the Dummy for a moment then removes it.


#? Inherit dummy_lib's "death" event function
function dummy_lib:events/death


## INIT

# Play audio feedback
execute if score @s dummy_lib.clock matches 2 run playsound block.glass.break neutral @a[distance=..16] ~ ~ ~
execute if score @s dummy_lib.clock matches 2 run playsound block.portal.trigger neutral @a[distance=..32] ~ ~ ~ 2 1.2 0.1

# Inflict Darkness
effect give @a[distance=..16] darkness 4 0


## LOOP

# R O T A T E
rotate @s ~20 ~

# Display visual feedback
particle large_smoke ^ ^0.5 ^0.5 0.0 0.2 0.0 0.01 4 force
particle large_smoke ^ ^0.5 ^-0.5 0.0 0.2 0.0 0.01 4
particle portal ~ ~1 ~ 0.0 0.2 0.0 0.5 8

execute if score @s dummy_lib.clock matches 59.. run particle flash ~ ~0.8 ~ 0.0 0.0 0.0 1 1 force


## END

# Drop loot
execute if score @s dummy_lib.clock matches 59.. if data storage lumenfuchs:flags { dummy: { drop_loot: true } } \
        run loot spawn ~ ~ ~ loot lumenfuchs:entities/dummy

## Increase Purity score
execute if score @s dummy_lib.clock matches 59.. run function lumenfuchs:dummy/utils/add_purity with entity @s attack