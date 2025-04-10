## * AydenTFoxx @ 2025-04-07 .. 2025-04-08
## * 
## * Swaps all Black Wool blocks with a random "Dummy Material" block.
## ? Black Wool is used in the NBT files as a "placeholder" block, with a chance to be replaced by a random material below.


## Ignore if function was repeated too many times
scoreboard players add @s dummy_lib.health 1

execute if score @s dummy_lib.health matches 8.. run return fail


# Roll RNG
execute store result score @s lumenfuchs.settings run random value 1..10


# Replace material (common)
execute if score @s lumenfuchs.settings matches 1 run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 black_concrete replace black_wool
execute if score @s lumenfuchs.settings matches 2 run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 black_concrete_powder replace black_wool
execute if score @s lumenfuchs.settings matches 3 run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 black_glazed_terracotta replace black_wool
execute if score @s lumenfuchs.settings matches 4 run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 black_stained_glass replace black_wool
execute if score @s lumenfuchs.settings matches 5 run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 black_terracotta replace black_wool
#execute if score @s lumenfuchs.settings matches 6 run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 obsidian replace black_wool
execute if score @s lumenfuchs.settings matches 7 run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 tinted_glass replace black_wool

# Replace material (rare)
execute if score @s lumenfuchs.settings matches 8 if predicate dummy_lib:random/25 run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 blackstone replace black_wool
execute if score @s lumenfuchs.settings matches 9 if predicate dummy_lib:random/10 run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 gilded_blackstone replace black_wool

# Re-roll function
execute if score @s lumenfuchs.settings matches 10 if predicate dummy_lib:random/50 run return run function lumenfuchs:dummy_altar/utils/swap_materials


# Reset scores
scoreboard players reset @s lumenfuchs.settings
scoreboard players reset @s dummy_lib.health