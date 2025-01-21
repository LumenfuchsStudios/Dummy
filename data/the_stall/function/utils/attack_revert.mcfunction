## * AydenTFoxx @ 2025-01-15
## * 
## * Lowers the dummy's arm after its attack.


# Remove attacking flag
tag @n[type=interaction, tag=dummy_lib.entity.dummy, tag=dummy_lib.dummy.is_attacking, distance=..2] remove dummy_lib.dummy.is_attacking

# Remove score
scoreboard players remove @s dummy_lib.clock 2
scoreboard players reset @s[scores={ dummy_lib.clock=..0 }] dummy_lib.clock


# Rotate back
execute store result entity @s Rotation[1] float -1.0 run scoreboard players get @s dummy_lib.clock

# Set interpolation
data modify entity @s interpolation_duration set value 4


# Return 1 if dummy is back to normal, 0 otherwise
execute unless score @s dummy_lib.clock matches ..0 run return 0

return 1