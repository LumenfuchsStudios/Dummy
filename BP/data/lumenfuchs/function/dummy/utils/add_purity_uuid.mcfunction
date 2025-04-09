## * AydenTFoxx @ 2025-04-01
## * 
## * Increments a given player's Purity score; Alternative argument for calling as the player themselves.

## ? Function Arguments:
#? UUID: The UUID of the player to be affected by this function.


# Select target
$tag @p[nbt={ UUID: $(UUID) }, distance=..8] add lumenfuchs.dummy.tweak_purity


# Increase score
execute as @p[tag=lumenfuchs.dummy.tweak_purity, distance=..8] unless score @s lumenfuchs.purity matches 20.. \
        run scoreboard players add @s lumenfuchs.purity 1

# Update Purity tag
execute as @p[tag=lumenfuchs.dummy.tweak_purity, distance=..8] \
        if score @s lumenfuchs.purity matches 8 if predicate dummy_lib:random/10 \
        run tag @s[tag=!lumenfuchs.player.purity] add lumenfuchs.player.purity

execute as @p[tag=lumenfuchs.dummy.tweak_purity, distance=..8] \
        if score @s lumenfuchs.purity matches 9 if predicate dummy_lib:random/50 \
        run tag @s[tag=!lumenfuchs.player.purity] add lumenfuchs.player.purity

execute as @p[tag=lumenfuchs.dummy.tweak_purity, distance=..8] \
        if score @s lumenfuchs.purity matches 10.. \
        run tag @s[tag=!lumenfuchs.player.purity] add lumenfuchs.player.purity

# Grant advancement
advancement grant @p[tag=lumenfuchs.dummy.tweak_purity, distance=..8, scores={ lumenfuchs.purity=12.. }] only lumenfuchs:purity


# Remove targeting tag
$tag @p[nbt={ UUID: $(UUID) }, distance=..8] remove lumenfuchs.dummy.tweak_purity