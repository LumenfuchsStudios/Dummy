## * AydenTFoxx @ 2025-04-05
## * 
## * Sends a signal for the Dummy Altar to remove all mobs around itself, including you.

# B-day again when


# Revoke trigger
advancement revoke @s only lumenfuchs:internal/dummy_altar/remove_all

# Ignore if Altar is busy / on cooldown
execute as @n[type=interaction, tag=lumenfuchs.entity.dummy_altar, distance=..8] if entity @s[nbt={ response: false }] run return fail


# Set signal tag
tag @n[type=interaction, tag=lumenfuchs.entity.dummy_altar, distance=..8] add lumenfuchs.dummy_altar.remove_all

# Revoke Purity
function lumenfuchs:dummy/utils/revoke_purity with entity @s