# Remove attacking flag
tag @n[type=interaction, tag=lumenfuchs.entity.dummy, tag=lumenfuchs.dummy.is_attacking, distance=..2] remove lumenfuchs.dummy.is_attacking

# Remove score
scoreboard players remove @s lumenfuchs.clock 2
scoreboard players reset @s[scores={ lumenfuchs.clock=..0 }] lumenfuchs.clock


# Rotate back
execute store result entity @s Rotation[1] float -1.0 run scoreboard players get @s lumenfuchs.clock

# Set interpolation
data modify entity @s interpolation_duration set value 4


# Return 1 if dummy is back to normal, 0 otherwise
execute unless score @s lumenfuchs.clock matches ..0 run return 0

return 1