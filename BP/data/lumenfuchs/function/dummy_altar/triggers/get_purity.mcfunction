## * AydenTFoxx @ 2025-04-05 .. 2025-04-07
## * 
## * Returns the user's current Purity level, without impacting it at all.
## * So far, this is the only method of directly accessing one's Purity value.

# I've once though about being called Aydden... nah.
# Ayddan is a funnier one, but (sorta?) already taken


# Revoke trigger
advancement revoke @s only lumenfuchs:internal/dummy_altar/get_purity

# Ignore if Altar is busy / on cooldown
execute as @n[type=interaction, tag=lumenfuchs.entity.dummy_altar, distance=..8] if entity @s[nbt={ response: false }] run return fail


# Set Purity score if none is found
execute unless score @s lumenfuchs.purity matches -20..20 run scoreboard players add @s lumenfuchs.purity 0

# Display message
title @s actionbar { "translate": "Your Purity is %s.", "with": [ { "score": { "name": "@s", "objective": "lumenfuchs.purity" } } ] }
title @s[scores={ lumenfuchs.purity=8.. }] actionbar { "translate": "Your Purity is %s.", "color": "yellow", "with": [ { "score": { "name": "@s", "objective": "lumenfuchs.purity" } } ] }
title @s[scores={ lumenfuchs.purity=..-8 }] actionbar { "translate": "Your Purity is %s.", "color": "red", "with": [ { "score": { "name": "@s", "objective": "lumenfuchs.purity" } } ] }