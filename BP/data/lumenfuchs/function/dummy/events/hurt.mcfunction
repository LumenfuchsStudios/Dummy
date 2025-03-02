## * AydenTFoxx @ 2025-01-14 .. 2025-03-01
## * 
## * Simulates the dummy taking damage.


# Stop attack
execute if score @s dummy_lib.clock matches 1.. run scoreboard players set @s dummy_lib.clock -20
execute if score @s dummy_lib.clock matches 1.. run tag @s remove dummy_lib.dummy.is_floating