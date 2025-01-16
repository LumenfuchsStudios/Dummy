# Detect Glowstone
execute unless block ~ ~ ~ glowstone run return fail


# Destroy blocks
execute positioned ~ ~-1 ~ run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air destroy

# Display audiovisual feedback
playsound block.end_portal.spawn neutral @a[distance=..16] ~ ~-1 ~ 1 0.8
particle explosion ~ ~-1 ~ 0.0 0.0 0.0 1.0 1


# Summon dummy
execute positioned ~ ~-1 ~ run function lumenfuchs:dummy/summon