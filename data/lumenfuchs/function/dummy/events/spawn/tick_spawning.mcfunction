scoreboard players add @s lumenfuchs.dummy 1

execute if score @s lumenfuchs.dummy matches 9600..12000 if predicate lumenfuchs:random/10 \
		run function lumenfuchs:dummy/events/spawn/roll_random_pos

scoreboard players reset @s[scores={ lumenfuchs.dummy=12000.. }] lumenfuchs.dummy