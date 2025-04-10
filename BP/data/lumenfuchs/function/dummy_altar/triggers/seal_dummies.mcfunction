## * AydenTFoxx @ 2025-04-05
## * 
## * Sends a signal for the Dummy Altar to paralyze all DummyLib creatures in a large radius.

# There be birthdays.


# Revoke trigger
advancement revoke @s only lumenfuchs:internal/dummy_altar/seal_dummies

# Ignore if Altar is busy / on cooldown
execute as @n[type=interaction, tag=lumenfuchs.entity.dummy_altar, distance=..8] if entity @s[nbt={ response: false }] run return fail


# Send signal tag
tag @n[type=interaction, tag=lumenfuchs.entity.dummy_altar, distance=..8] add lumenfuchs.dummy_altar.seal_dummies

# Grant Purity
execute if predicate dummy_lib:random/20 run function lumenfuchs:dummy/utils/add_purity_uuid with entity @s