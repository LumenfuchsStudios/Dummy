## * AydenTFoxx @ 2025-01-15 .. 2025-03-01
## * 
## * Raises the dummy's arm to its signature attack.


# Remove walking tag
tag @s[tag=dummy_lib.dummy.is_walking] remove dummy_lib.dummy.is_walking


# Add score
execute unless score @s dummy_lib.clock matches 160.. run scoreboard players add @s dummy_lib.clock 2

# Add tag
execute if score @s dummy_lib.clock matches 2..4 run tag @s[tag=!dummy_lib.dummy.is_floating] add dummy_lib.dummy.is_floating


## Ignore if on cooldown
execute if score @s dummy_lib.clock matches ..-1 run return fail


# Display visual feedback
particle nautilus ~ ~1 ~ 0.2 0.4 0.2 1 4
execute if score @s dummy_lib.clock matches 40.. run particle enchant ~ ~2 ~ 0.0 0.2 0.0 1 6
execute if score @s dummy_lib.clock matches 70.. run particle large_smoke ~ ~1.2 ~ 0.2 0.4 0.2 0.02 8

execute at @p run particle ash ~ ~1.2 ~ 0.2 0.3 0.2 2 2 force

# Play audio cues
execute if score @s dummy_lib.clock matches 2 run playsound entity.evoker.prepare_attack master @a[distance=..32] ~ ~ ~ 1 0.5 0.1
execute if score @s dummy_lib.clock matches 40 run playsound block.conduit.ambient.short master @a[distance=..32] ~ ~ ~ 1 0.8 0.1
execute if score @s dummy_lib.clock matches 100 run playsound entity.warden.sonic_charge master @a[distance=..32] ~ ~ ~ 1 1.2 0.2

execute if score @s dummy_lib.clock matches 100 run stopsound @a[distance=..32] ambient
execute if score @s dummy_lib.clock matches 100 run stopsound @a[distance=..32] player

# Defy physics
execute if score @s dummy_lib.clock matches 60.. run function dummy_lib:physics/move { direction: "~ ~0.02 ~" }


# Apply Darkness
execute if score @s dummy_lib.clock matches 120.. run effect give @a[tag=!goldark.effects.purity, distance=..16] darkness 4 0 true

# Set moody weather
execute if score @s dummy_lib.clock matches 60.. run weather thunder 40t