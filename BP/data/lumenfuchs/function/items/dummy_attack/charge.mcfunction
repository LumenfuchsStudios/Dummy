## * AydenTFoxx @ 2025-03-05 .. 2025-04-01
## * 
## * "Charges" a Dummy blast, displaying its visual effects.
## ? (The actual charging speed is defined by the item's consume_seconds value)


# Revoke trigger
advancement revoke @s only lumenfuchs:internal/dummy_blast/charge


# Display visual feedback (user)
particle smoke ~ ~1 ~ 0.1 0.2 0.1 0.01 4
particle nautilus ~ ~1 ~ 0.0 0.25 0.0 1 3

# Display visual feedback (target)
execute anchored eyes positioned ^ ^ ^4 run particle end_rod ~ ~ ~ 0.0 0.05 0.0 0.02 1 force
execute anchored eyes positioned ^ ^ ^4 run particle enchant ~ ~ ~ 0.05 0.1 0.05 0.8 5