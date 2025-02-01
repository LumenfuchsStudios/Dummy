## * AydenTFoxx @ 2025-01-30
## * 
## * Updates the forceloading entity's behavior.


# Tick clock
scoreboard players add @s lumenfuchs.clock 1

# Remove entity
execute if score @s lumenfuchs.clock matches 1200.. run function lumenfuchs:dummy/utils/forceload/remove