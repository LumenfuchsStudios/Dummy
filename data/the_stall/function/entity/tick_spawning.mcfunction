scoreboard players add @s dummy_lib.dummy 1

execute if score @s dummy_lib.dummy matches 9600..12000 if predicate dummy_lib:random/10 \
		run function dummy_lib:events/spawn/try_spawning

scoreboard players reset @s[scores={ dummy_lib.dummy=12000.. }] dummy_lib.dummy