## * AydenTFoxx @ 2025-01-15 .. 2025-01-31
## * 
## * Applies upwards and downwards motion to the dummy.


## Add momentum
execute unless score @s lumenfuchs.momentum matches 200.. run scoreboard players add @s lumenfuchs.momentum 1


## Apply momentum

# Downwards
execute if score @s lumenfuchs.momentum matches 4..10 run function lumenfuchs:dummy/physics/move { direction: "~ ~-0.3 ~" }
execute if score @s lumenfuchs.momentum matches 11..30 run function lumenfuchs:dummy/physics/move { direction: "~ ~-0.5 ~" }
execute if score @s lumenfuchs.momentum matches 31..50 run function lumenfuchs:dummy/physics/move { direction: "~ ~-0.9 ~" }
execute if score @s lumenfuchs.momentum matches 51..70 run function lumenfuchs:dummy/physics/move { direction: "~ ~-1.2 ~" }
execute if score @s lumenfuchs.momentum matches 71..90 run function lumenfuchs:dummy/physics/move { direction: "~ ~-1.5 ~" }
execute if score @s lumenfuchs.momentum matches 91.. run function lumenfuchs:dummy/physics/move { direction: "~ ~-2 ~" }

# Upwards
execute if score @s lumenfuchs.momentum matches -10..-4 run function lumenfuchs:dummy/physics/move { direction: "~ ~0.3 ~" }
execute if score @s lumenfuchs.momentum matches -30..-11 run function lumenfuchs:dummy/physics/move { direction: "~ ~0.5 ~" }
execute if score @s lumenfuchs.momentum matches -50..-31 run function lumenfuchs:dummy/physics/move { direction: "~ ~0.9 ~" }
execute if score @s lumenfuchs.momentum matches -70..-51 run function lumenfuchs:dummy/physics/move { direction: "~ ~1.2 ~" }
execute if score @s lumenfuchs.momentum matches -90..-71 run function lumenfuchs:dummy/physics/move { direction: "~ ~1.5 ~" }
execute if score @s lumenfuchs.momentum matches ..-91 run function lumenfuchs:dummy/physics/move { direction: "~ ~2 ~" }