## * AydenTFoxx @ 2025-01-15 .. 2025-01-16
## * 
## * Summons the Dummy if the totem is detected.


# Detect Glowstone
execute unless block ~ ~ ~ glowstone run return fail


# Destroy blocks
execute positioned ~ ~-1 ~ run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air destroy

# Display audiovisual feedback
playsound block.end_portal.spawn neutral @a[distance=..32] ~ ~-1 ~ 1 0.8 0.2
particle explosion ~ ~-1 ~ 0.0 0.0 0.0 1.0 1


# Summon dummy
execute positioned ~ ~-1 ~ run function lumenfuchs:dummy/summon