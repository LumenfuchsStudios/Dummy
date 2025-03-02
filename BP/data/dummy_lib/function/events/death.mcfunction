## * AydenTFoxx @ 2025-01-14 .. 2025-02-20
## * 
## * Pauses the dummy entity for a moment then removes it.


# Reset clock (from previous wave functions)
scoreboard players reset @s[tag=!dummy_lib.dummy.is_dead] dummy_lib.clock

# Play audio feedback
execute unless entity @s[tag=dummy_lib.dummy.is_dead] run playsound entity.generic.death neutral @a[distance=..16] ~ ~ ~ 1


# Add tag
tag @s[tag=!dummy_lib.dummy.is_dead] add dummy_lib.dummy.is_dead

# Add score
scoreboard players add @s dummy_lib.clock 1


# Remove dummy
execute if score @s dummy_lib.clock matches 60.. run function dummy_lib:events/remove