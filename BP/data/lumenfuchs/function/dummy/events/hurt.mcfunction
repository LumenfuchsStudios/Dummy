## * AydenTFoxx @ 2025-01-14 .. 2025-03-02
## * 
## * Simulates the dummy taking damage.


## Stop attack

# Display audiovisual feedback (failure)
execute if score @s dummy_lib.clock matches 100.. anchored eyes run particle flame ^ ^ ^1 0.1 0.2 0.1 0.025 8
execute if score @s dummy_lib.clock matches 120.. run particle explosion ~ ~1 ~ 0.0 0.0 0.0 1 1

execute if score @s dummy_lib.clock matches 120.. run playsound entity.warden.sonic_boom master @a[distance=..24] ~ ~ ~ 1 0.2 0.1
execute if score @s dummy_lib.clock matches 120.. run playsound ambient.soul_sand_valley.mood master @a[distance=..24] ~ ~ ~ 1 1.2 0.2


# Remove extra health
execute if score @s dummy_lib.clock matches 120.. run scoreboard players remove @s dummy_lib.health 1

# Revert attack trigger
execute if score @s dummy_lib.clock matches 1.. run scoreboard players set @s dummy_lib.clock -20
execute if score @s dummy_lib.clock matches 1.. run tag @s remove dummy_lib.dummy.is_floating