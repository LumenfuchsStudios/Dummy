## * AydenTFoxx @ 2025-03-02 .. 2025-03-04
## * 
## * Tunnels through all non-unbreakable terrain until the Dummy hits the Void.
## * Used whenever the Dummy is stuck in a dimension where no other player is present.


## Ignore if Spectator Player is nearby (Override with debug_mode flag)
execute unless data storage lumenfuchs:flags { debug_mode: true } if entity @p[gamemode=spectator, distance=..128] run return fail

## Ignore with a chance if prep hasn't fully begun yet
execute unless score @s dummy_lib.dummy matches 20.. if predicate dummy_lib:random/50 run return fail


# Display Warp indicator
particle enchant ~ ~1.5 ~ 0.1 0.1 0.1 1 8 force

# Prepare ability
function lumenfuchs:dummy/events/teleport/_prepare


# Rotate self
rotate @s ~15 ~


# Display (initial) audiovisual feedback
execute if score @s dummy_lib.dummy matches 180 run particle explosion_emitter ~ ~1 ~ 0.0 0.0 0.0 1 4
execute if score @s dummy_lib.dummy matches 180 run particle end_rod ~ ~1 ~ 0.0 0.0 0.0 0.1 24

execute if score @s dummy_lib.dummy matches 180 run playsound entity.wither.death master @a[distance=..32] ~ ~ ~ 2 0.7 0.5


# Set natural spawning trigger to random player
execute if score @s dummy_lib.dummy matches 180 as @r unless score @s dummy_lib.dummy matches 4000.. \
		run scoreboard players set @s dummy_lib.dummy 4000


# Build Shrine at initial position
execute if score @s dummy_lib.dummy matches 180 if data storage lumenfuchs:flags { dummy: { griefing: true } } if block ~1 ~ ~ #dummy_lib:transparent run setblock ~1 ~ ~ soul_torch destroy
execute if score @s dummy_lib.dummy matches 180 if data storage lumenfuchs:flags { dummy: { griefing: true } } if block ~-1 ~ ~ #dummy_lib:transparent run setblock ~-1 ~ ~ soul_torch destroy
execute if score @s dummy_lib.dummy matches 180 if data storage lumenfuchs:flags { dummy: { griefing: true } } if block ~ ~ ~1 #dummy_lib:transparent run setblock ~ ~ ~1 soul_torch destroy
execute if score @s dummy_lib.dummy matches 180 if data storage lumenfuchs:flags { dummy: { griefing: true } } if block ~ ~ ~-1 #dummy_lib:transparent run setblock ~ ~ ~-1 soul_torch destroy


# Dig through blocks (breakable: non Dragon-immune)
# If dummy.griefing is set to false, this has the same behavior as for unbreakables.
execute if score @s dummy_lib.dummy matches 180.. unless block ~ ~-1 ~ #dragon_immune run particle soul_fire_flame ^ ^ ^0.5 0.1 0.1 0.1 0.01 2 force
execute if score @s dummy_lib.dummy matches 180.. unless block ~ ~-1 ~ #dragon_immune run particle soul_fire_flame ^ ^ ^-0.5 0.1 0.1 0.1 0.01 2 force

execute if score @s dummy_lib.dummy matches 180.. unless data storage lumenfuchs:flags { dummy: { griefing: true } } \
		run return run function dummy_lib:physics/move { direction: "~ ~-0.5 ~" }

execute if score @s dummy_lib.dummy matches 180.. unless block ~ ~-1 ~ #dragon_immune \
		run return run setblock ~ ~-1 ~ air destroy


# Phase through blocks (unbreakable: Dragon-immune)
execute if score @s dummy_lib.dummy matches 180.. run function dummy_lib:physics/move { direction: "~ ~-0.5 ~" }