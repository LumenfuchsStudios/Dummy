## * AydenTFoxx @ 2025-04-05 .. 2025-04-07
## * 
## * Deals a large amount of damage to all creatures near the Dummy Altar itself.

# Emotional damage: b-day nearly over


## INIT

# Display "running" state
execute unless score @s dummy_lib.clock matches 1.. run data modify entity @n[type=block_display, tag=lumenfuchs.entity.dummy_altar, distance=..1.1] block_state.Properties.charges set value "4"

# Display initial feedback
execute unless score @s dummy_lib.clock matches 1.. run playsound block.beacon.power_select block @a[distance=..32] ~ ~0.5 ~ 1 1.2 0.1
execute unless score @s dummy_lib.clock matches 1.. run playsound entity.warden.sonic_charge block @a[distance=..32] ~ ~0.5 ~ 2 0.5 0.3

execute unless score @s dummy_lib.clock matches 1.. run particle gust ~ ~0.5 ~ 0.0 0.0 0.0 1 1 force


## TICK

# Tick clock
scoreboard players operation @s dummy_lib.clock += #dummy_lib_tick_rate_b dummy_lib.dummy

# Display visual feedback
execute unless score @s dummy_lib.clock matches 60.. run particle portal ~ ~1.2 ~ 0.1 0.2 0.1 1 12
execute unless score @s dummy_lib.clock matches 60.. run particle smoke ~ ~1 ~ 0.1 0.2 0.1 0.05 8

particle large_smoke ~ ~1.5 ~ 0.1 0.2 0.1 0.02 6 force
particle enchanted_hit ~ ~1.3 ~ 0.1 0.2 0.1 0.1 4 force


## END

# No mercy shall be given
execute if score @s dummy_lib.clock matches 80.. as @e[type=!#dummy_lib:technical, distance=1..16] run damage @s 80 bad_respawn_point

# Trigger death event for Dummies
execute if score @s dummy_lib.clock matches 80.. as @e[type=interaction, tag=dummy_lib.entity, distance=..32] at @s run function dummy_lib:events/death


# Display final feedback
execute if score @s dummy_lib.clock matches 80.. run playsound entity.warden.sonic_boom block @a[distance=..32] ~ ~0.5 ~ 1.5 1.2 0.2
execute if score @s dummy_lib.clock matches 80.. run particle explosion_emitter ~ ~0.5 ~ 0.0 0.0 0.0 1 1 force

# Summon Lightning for dramatic effect
execute if score @s dummy_lib.clock matches 80.. run summon lightning_bolt ~ ~1 ~


# Set cooldown
scoreboard players set @s[scores={ dummy_lib.clock=80.. }] dummy_lib.dummy 720

# Disable feedback
data modify entity @s[scores={ dummy_lib.clock=80.. }] response set value false

# Display "deactivated" state
execute if score @s dummy_lib.clock matches 80.. run data modify entity @n[type=block_display, tag=lumenfuchs.entity.dummy_altar, distance=..1.1] block_state.Properties.charges set value "0"


# Remove trigger
tag @s[scores={ dummy_lib.clock=80.. }] remove lumenfuchs.dummy_altar.remove_all

# Reset clock
scoreboard players reset @s[scores={ dummy_lib.clock=80.. }] dummy_lib.clock