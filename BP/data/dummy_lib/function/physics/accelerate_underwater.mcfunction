## * AydenTFoxx @ 2025-04-08
## * 
## * Applies upwards and downwards motion to the dummy entity while underwater.


## Ignore if flag is detected
execute if entity @s[tag=dummy_lib.dummy.is_floating] run return fail

## Ignore if magically-paralyzed
execute if entity @s[tag=dummy_lib.dummy.paralysis] run return fail


## Add momentum
execute unless score @s dummy_lib.momentum matches 100.. run scoreboard players operation @s dummy_lib.momentum += #dummy_lib_tick_rate_a dummy_lib.dummy


## Apply momentum

# Downwards
execute if score @s dummy_lib.momentum matches 4..10 run function dummy_lib:physics/move { direction: "~ ~-0.15 ~" }
execute if score @s dummy_lib.momentum matches 11..30 run function dummy_lib:physics/move { direction: "~ ~-0.25 ~" }
execute if score @s dummy_lib.momentum matches 31..50 run function dummy_lib:physics/move { direction: "~ ~-0.45 ~" }
execute if score @s dummy_lib.momentum matches 51..70 run function dummy_lib:physics/move { direction: "~ ~-0.6 ~" }
execute if score @s dummy_lib.momentum matches 71..90 run function dummy_lib:physics/move { direction: "~ ~-0.75 ~" }
execute if score @s dummy_lib.momentum matches 91.. run function dummy_lib:physics/move { direction: "~ ~-1 ~" }

# Upwards
execute if score @s dummy_lib.momentum matches -10..-4 run function dummy_lib:physics/move { direction: "~ ~0.15 ~" }
execute if score @s dummy_lib.momentum matches -30..-11 run function dummy_lib:physics/move { direction: "~ ~0.25 ~" }
execute if score @s dummy_lib.momentum matches -50..-31 run function dummy_lib:physics/move { direction: "~ ~0.45 ~" }
execute if score @s dummy_lib.momentum matches -70..-51 run function dummy_lib:physics/move { direction: "~ ~0.6 ~" }
execute if score @s dummy_lib.momentum matches -90..-71 run function dummy_lib:physics/move { direction: "~ ~0.75 ~" }
execute if score @s dummy_lib.momentum matches ..-91 run function dummy_lib:physics/move { direction: "~ ~1 ~" }