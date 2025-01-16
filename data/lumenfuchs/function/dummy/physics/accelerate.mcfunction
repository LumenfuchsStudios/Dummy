# Add momentum
execute unless score @s lumenfuchs.momentum matches 20.. run scoreboard players add @s lumenfuchs.momentum 1


## Apply momentum

# Downwards
execute if score @s lumenfuchs.momentum matches 1..5 run function lumenfuchs:dummy/physics/move { direction: "~ ~-0.2 ~" }
execute if score @s lumenfuchs.momentum matches 6..10 run function lumenfuchs:dummy/physics/move { direction: "~ ~-0.5 ~" }
execute if score @s lumenfuchs.momentum matches 11.. run function lumenfuchs:dummy/physics/move { direction: "~ ~-1.0 ~" }

# Upwards
execute if score @s lumenfuchs.momentum matches -5..-1 run function lumenfuchs:dummy/physics/move { direction: "~ ~0.2 ~" }
execute if score @s lumenfuchs.momentum matches -10..-6 run function lumenfuchs:dummy/physics/move { direction: "~ ~0.5 ~" }
execute if score @s lumenfuchs.momentum matches ..-11 run function lumenfuchs:dummy/physics/move { direction: "~ ~1.0 ~" }