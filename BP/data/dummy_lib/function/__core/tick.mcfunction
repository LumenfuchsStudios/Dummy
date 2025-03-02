## * AydenTFoxx @ 2025-01-15 .. 2025-03-01
## * 
## * Ticks all code from this datapack at a custom rate.


## FUNCTION MANAGEMENT

# Tick clock
scoreboard players add #dummy_lib_tick_a dummy_lib.dummy 1
scoreboard players add #dummy_lib_tick_b dummy_lib.dummy 1


# Update dummy entities
#execute if score #dummy_lib_tick_a dummy_lib.dummy = #dummy_lib_tick_rate_a dummy_lib.dummy as @e[type=interaction, tag=dummy_lib.entity] at @s if loaded ~ ~ ~ run function dummy_lib:update_a with storage dummy_lib:flags dummy
execute if score #dummy_lib_tick_b dummy_lib.dummy = #dummy_lib_tick_rate_b dummy_lib.dummy as @e[type=interaction, tag=dummy_lib.entity, tag=!dummy_lib.dummy.is_dead] at @s if loaded ~ ~ ~ run function dummy_lib:update_b

# Remove stray limbs if Dummy was killed without removing them
execute if score #dummy_lib_tick_a dummy_lib.dummy = #lumenfuchs_tick_rate_a dummy_lib.dummy \
		as @e[type=item_display, tag=dummy_lib.entity.dummy_limb] at @s unless entity @n[type=interaction, tag=dummy_lib.entity, distance=..8] run function dummy_lib:events/death


# Reset clock
execute if score #dummy_lib_tick_a dummy_lib.dummy >= #dummy_lib_tick_rate_a dummy_lib.dummy run scoreboard players set #dummy_lib_tick_a dummy_lib.dummy 0
execute if score #dummy_lib_tick_b dummy_lib.dummy >= #dummy_lib_tick_rate_b dummy_lib.dummy run scoreboard players set #dummy_lib_tick_b dummy_lib.dummy 0


## DUMMY FORCELOADER

# Update forceload entities
execute as @e[type=marker, tag=dummy_lib.entity.forceload] at @s run function dummy_lib:utils/forceload/update