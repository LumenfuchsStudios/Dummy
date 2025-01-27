scoreboard players add @s lumenfuchs.dummy 1

execute if score @s lumenfuchs.dummy matches 4000..8000 if predicate lumenfuchs:random/10 \
		run function lumenfuchs:dummy/events/spawn/roll_random_pos

scoreboard players reset @s[scores={ lumenfuchs.dummy=8000.. }] lumenfuchs.dummy