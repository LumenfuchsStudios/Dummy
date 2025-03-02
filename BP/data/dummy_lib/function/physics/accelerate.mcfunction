## * AydenTFoxx @ 2025-01-15 .. 2025-03-01
## * 
## * Applies upwards and downwards motion to the dummy entity.


## Ignore if flag is detected
execute if entity @s[tag=dummy_lib.dummy.is_floating] run return fail

## Add momentum
execute unless score @s dummy_lib.momentum matches 200.. run scoreboard players add @s dummy_lib.momentum 1


## Apply momentum

# Downwards
execute if score @s dummy_lib.momentum matches 4..10 run function dummy_lib:physics/move { direction: "~ ~-0.3 ~" }
execute if score @s dummy_lib.momentum matches 11..30 run function dummy_lib:physics/move { direction: "~ ~-0.5 ~" }
execute if score @s dummy_lib.momentum matches 31..50 run function dummy_lib:physics/move { direction: "~ ~-0.9 ~" }
execute if score @s dummy_lib.momentum matches 51..70 run function dummy_lib:physics/move { direction: "~ ~-1.2 ~" }
execute if score @s dummy_lib.momentum matches 71..90 run function dummy_lib:physics/move { direction: "~ ~-1.5 ~" }
execute if score @s dummy_lib.momentum matches 91.. run function dummy_lib:physics/move { direction: "~ ~-2 ~" }

# Upwards
execute if score @s dummy_lib.momentum matches -10..-4 run function dummy_lib:physics/move { direction: "~ ~0.3 ~" }
execute if score @s dummy_lib.momentum matches -30..-11 run function dummy_lib:physics/move { direction: "~ ~0.5 ~" }
execute if score @s dummy_lib.momentum matches -50..-31 run function dummy_lib:physics/move { direction: "~ ~0.9 ~" }
execute if score @s dummy_lib.momentum matches -70..-51 run function dummy_lib:physics/move { direction: "~ ~1.2 ~" }
execute if score @s dummy_lib.momentum matches -90..-71 run function dummy_lib:physics/move { direction: "~ ~1.5 ~" }
execute if score @s dummy_lib.momentum matches ..-91 run function dummy_lib:physics/move { direction: "~ ~2 ~" }