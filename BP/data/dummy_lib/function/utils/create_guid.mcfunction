## * AydenTFoxx @ 2025-04-06 .. 2025-04-07
## * 
## * Gives an entity a Globally Unique IDentifier (GUID).


# Set target
scoreboard players operation @s dummy_lib.guid = #dummy_lib_guid dummy_lib.guid

# Set limbs
execute positioned ~ ~1 ~ as @e[type=#dummy_lib:technical, tag=dummy_lib.entity.dummy_limb, distance=..2] \
        unless score @s dummy_lib.guid matches 1.. run scoreboard players operation @s dummy_lib.guid = #dummy_lib_guid dummy_lib.guid


# Increase global GUID
scoreboard players add #dummy_lib_guid dummy_lib.guid 1