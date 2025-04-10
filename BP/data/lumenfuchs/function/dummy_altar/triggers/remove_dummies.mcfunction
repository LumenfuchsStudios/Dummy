## * AydenTFoxx @ 2025-04-05
## * 
## * Sends a signal to the Dummy Altar to remove all DummyLib entities nearby.

# Not Enough B-Days


# Revoke trigger
advancement revoke @s only lumenfuchs:internal/dummy_altar/remove_dummies

# Ignore if Altar is busy / on cooldown
execute as @n[type=interaction, tag=lumenfuchs.entity.dummy_altar, distance=..8] if entity @s[nbt={ response: false }] run return fail


# Set signal tag
tag @n[type=interaction, tag=lumenfuchs.entity.dummy_altar, distance=..8] add lumenfuchs.dummy_altar.remove_dummies

# Grant Purity
execute if predicate dummy_lib:random/50 run function lumenfuchs:dummy/utils/add_purity_uuid with entity @s