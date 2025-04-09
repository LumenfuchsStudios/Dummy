## * AydenTFoxx @ 2025-01-17 .. 2025-04-07
## * 
## * Periodically attempts to spawn the Dummy while the player is in dark areas.


# Tick clock
scoreboard players operation @s dummy_lib.dummy += #dummy_lib_tick_rate_a dummy_lib.dummy

# Double clock
scoreboard players operation @s[scores={ lumenfuchs.purity=..-10 }] dummy_lib.dummy += #dummy_lib_tick_rate_a dummy_lib.dummy


# Roll for spawning
execute if score @s dummy_lib.dummy matches 4000..8000 if predicate dummy_lib:random/10 \
		run function lumenfuchs:dummy/events/spawn/try_spawning

# Reset clock
scoreboard players reset @s[scores={ dummy_lib.dummy=8000.. }] dummy_lib.dummy