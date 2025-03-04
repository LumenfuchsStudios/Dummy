## * AydenTFoxx @ 2025-01-15 .. 2025-03-02
## * 
## * Performs the dummy's signature "attack" ability.


# STOP EVERYTHING!!1! (kris get the banana)
stopsound @a[distance=..64]

# Damage nearest victim
execute if entity @p[gamemode=!creative, gamemode=!spectator, distance=..64] run damage @p[gamemode=!creative, gamemode=!spectator, distance=..64] 8 sonic_boom by @s
execute unless entity @p[gamemode=!creative, gamemode=!spectator, distance=..64] as @e[type=!#dummy_lib:technical, distance=..16] run damage @s 8 sonic_boom by @n[type=interaction, tag=lumenfuchs.entity.dummy]


# Display audiovisual feedback
execute anchored eyes run particle flame ^ ^ ^1 0.3 0.4 0.3 0.05 24 force

execute at @p[gamemode=!creative, gamemode=!spectator, distance=..64] run particle large_smoke ~ ~0.8 ~ 0.15 0.3 0.15 0.05 16
execute unless entity @p[gamemode=!creative, gamemode=!spectator, distance=..64] at @e[type=!#dummy_lib:technical, type=!player, distance=..16] run particle explosion ~ ~1 ~ 0.0 0.0 0.0 1 1 force

playsound entity.warden.sonic_boom master @a[distance=..32] ~ ~ ~ 2 0.7 0.2
playsound ambient.soul_sand_valley.mood master @a[distance=..32] ~ ~ ~ 1 0.8 0.5


# Gamble for health
execute if predicate dummy_lib:random/50 run scoreboard players remove @s dummy_lib.health 1
execute if predicate dummy_lib:random/50 run scoreboard players add @s dummy_lib.health 1

# Apply self knockback
function dummy_lib:physics/move { direction: "^ ^0.2 ^-0.4" }


# Reset attack trigger
scoreboard players set @s dummy_lib.clock -80

# Remove anti-gravity
tag @s remove dummy_lib.dummy.is_floating