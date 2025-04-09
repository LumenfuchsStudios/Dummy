## * AydenTFoxx @ 2025-03-02 .. 2025-04-07
## * 
## * Prepares the Dummy for its Warp abilities.


# Tick timer
scoreboard players operation @s dummy_lib.dummy += #dummy_lib_tick_rate_b dummy_lib.dummy


# Display audiovisual feedback
particle large_smoke ~ ~0.5 ~ 0.15 0.3 0.15 0.02 4

execute if score @s dummy_lib.dummy matches 80.. run particle portal ~ ~1 ~ 0.1 0.4 0.1 0.8 12
execute if score @s dummy_lib.dummy matches 100.. run particle witch ~ ~0.5 ~ 0.15 0.3 0.15 0 8

execute if score @s dummy_lib.dummy matches 180 run particle flash ~ ~1 ~ 0.0 0.0 0.0 1 1 force

execute if score @s dummy_lib.dummy matches 120 run playsound block.portal.trigger master @a[distance=..32] ~ ~ ~ 1.5 1.2 0.5