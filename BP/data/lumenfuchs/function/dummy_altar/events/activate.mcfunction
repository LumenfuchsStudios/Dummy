## * AydenTFoxx @ 2025-04-08 .. 2025-04-09
## * 
## * Performs a long ritual for a Dummy Altar's activation.
## * A standard showcase of Yannah/Ayden's flashy tastes.


## Revert "possession" if event is interrupted
execute unless entity @p[distance=..4] as @e[type=!#dummy_lib:technical, type=!player, tag=lumenfuchs.dummy_altar.possess, distance=..64] run data remove entity @s NoAI
execute unless entity @p[distance=..4] as @e[type=!#dummy_lib:technical, type=!player, tag=lumenfuchs.dummy_altar.possess, distance=..64] run tag @s remove lumenfuchs.dummy_altar.possess

## Ignore if no player is nearby
execute unless entity @p[distance=..4] run return run scoreboard players reset @s[scores={ dummy_lib.clock=..179 }] dummy_lib.clock


## Tick clock
scoreboard players operation @s dummy_lib.clock += #dummy_lib_tick_rate_b dummy_lib.dummy


# Ro ta te
rotate @s ~10 ~


# Display initial feedback
execute if score @s dummy_lib.clock matches 20 run playsound block.respawn_anchor.set_spawn neutral @a[distance=..32] ~ ~0.5 ~ 1 0.5 0.1

particle soul_fire_flame ^ ^0.5 ^1 0.01 0.01 0.01 0.01 2 force
particle soul_fire_flame ^ ^0.5 ^-1 0.01 0.01 0.01 0.01 2 force

particle smoke ~ ~1 ~ 0.2 0.1 0.2 0.02 4


## Await clock
execute if score @s dummy_lib.clock matches ..120 run return 0


# Warp space-time
time add 10s
weather thunder 20t

# Overwhelm creatures
execute as @e[type=!#dummy_lib:technical, type=!player, tag=!lumenfuchs.dummy_altar.possess, distance=..32] unless data entity @s { NoAI: 1b } run data merge entity @s { NoAI: 1b, Tags: [ lumenfuchs.dummy_altar.possess ] }

effect give @e[type=!#dummy_lib:technical, type=!player, tag=lumenfuchs.dummy_altar.possess, distance=..32] invisibility 1 0 true


# Display visual feedback
execute if score @s dummy_lib.clock matches 160 run playsound ambient.soul_sand_valley.mood neutral @a[distance=..32] ~ ~0.5 ~ 1.5 1.5 0.15

particle portal ~ ~0.5 ~ 0.1 0.1 0.1 1 8 force
particle enchant ~ ~1 ~ 0.05 0.05 0.05 0.8 8

execute if score @s dummy_lib.clock matches 200.. run particle end_rod ~ ~1 ~ 0.1 0.1 0.1 0.05 2
execute at @e[type=!#dummy_lib:technical, type=!player, tag=lumenfuchs.dummy_altar.possess, distance=..32] \
        run particle end_rod ~ ~1 ~ 0.01 0.01 0.01 0.01 2 force


## Await clock
execute if score @s dummy_lib.clock matches ..240 run return 0


# Inflict shadows
effect give @a[distance=..32] darkness 8 0 true


# Display final feedback
execute if score @s dummy_lib.clock matches 250 run playsound entity.evoker.prepare_summon neutral @a[distance=..32] ~ ~0.5 ~ 2 1.2 0.2
execute if score @s dummy_lib.clock matches 310 run playsound block.portal.trigger neutral @a[distance=..32] ~ ~0.5 ~ 2 1.5 0.2

particle witch ~ ~1 ~ 0.1 0.1 0.1 0.01 4
particle ash ~ ~1 ~ 1.0 1.0 1.0 0.5 8

particle end_rod ~ ~1 ~ 0.1 0.1 0.1 0.1 4 force
execute at @e[type=!#dummy_lib:technical, type=!player, tag=lumenfuchs.dummy_altar.possess, distance=..32] \
        run particle large_smoke ~ ~ ~ 0.1 0.2 0.1 0.025 8 force


## Await final clock
execute if score @s dummy_lib.clock matches ..380 run return 0


# The Awakening
particle flash ~ ~1 ~ 0.0 0.0 0.0 1 1
particle gust_emitter_large ~ ~0.5 ~ 0.0 0.0 0.0 1 1

playsound entity.wither.death master @a[distance=..64] ~ ~0.5 ~ 4 0.5 0.5


# Return creatures
execute as @e[type=!#dummy_lib:technical, type=!player, tag=lumenfuchs.dummy_altar.possess, distance=..64] run data remove entity @s NoAI
execute as @e[type=!#dummy_lib:technical, type=!player, tag=lumenfuchs.dummy_altar.possess, distance=..64] run tag @s remove lumenfuchs.dummy_altar.possess


# Re(set) scores
scoreboard players set @s dummy_lib.dummy 0
scoreboard players reset @s dummy_lib.clock

# Remove tag
tag @s remove lumenfuchs.dummy_altar.deactivated