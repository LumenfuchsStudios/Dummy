# Remove walking tag
tag @s[tag=lumenfuchs.dummy.is_walking] remove lumenfuchs.dummy.is_walking

# Add score
execute unless score @s lumenfuchs.clock matches 100.. run scoreboard players add @s lumenfuchs.clock 2


# Add rotation
execute store result entity @s Rotation[1] float -1.0 run scoreboard players get @s lumenfuchs.clock

# Set interpolation
data modify entity @s interpolation_duration set value 4


# Return 1 if attack is ready, 0 otherwise
execute unless score @s lumenfuchs.clock matches 100.. run return 0

return 1