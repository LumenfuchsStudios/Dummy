## * AydenTFoxx @ 2025-01-17 .. 2025-01-27
## * 
## * Periodically attempts to spawn the Dummy while the player is in dark areas.


# Tick clock
scoreboard players add @s lumenfuchs.dummy 1

# Roll for spawning
execute if score @s lumenfuchs.dummy matches 4000..8000 if predicate lumenfuchs:random/10 \
		run function lumenfuchs:dummy/events/spawn/roll_random_pos

# Reset clock
scoreboard players reset @s[scores={ lumenfuchs.dummy=8000.. }] lumenfuchs.dummy