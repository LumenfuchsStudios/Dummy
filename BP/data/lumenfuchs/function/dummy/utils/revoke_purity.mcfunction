## * AydenTFoxx @ 2025-04-01
## * 
## * Decrements a given player's Purity score.

## ? Function Arguments:
#? UUID: The UUID of the player to be affected by this function.


# Select target
$tag @p[nbt={ UUID: $(UUID) }, distance=..8] add lumenfuchs.dummy.tweak_purity


# Decrease score
execute as @p[tag=lumenfuchs.dummy.tweak_purity, distance=..8] unless score @s lumenfuchs.purity matches ..-20 \
        run scoreboard players remove @s lumenfuchs.purity 1

# Update Purity tag
execute as @p[tag=lumenfuchs.dummy.tweak_purity, distance=..8] \
        if score @s lumenfuchs.purity matches 7 if predicate dummy_lib:random/10 \
        run tag @s[tag=lumenfuchs.player.purity] remove lumenfuchs.player.purity

execute as @p[tag=lumenfuchs.dummy.tweak_purity, distance=..8] \
        if score @s lumenfuchs.purity matches 6 if predicate dummy_lib:random/50 \
        run tag @s[tag=lumenfuchs.player.purity] remove lumenfuchs.player.purity

execute as @p[tag=lumenfuchs.dummy.tweak_purity, distance=..8] \
        if score @s lumenfuchs.purity matches ..5 \
        run tag @s[tag=lumenfuchs.player.purity] remove lumenfuchs.player.purity

# Grant advancement
advancement grant @p[tag=lumenfuchs.dummy.tweak_purity, distance=..8, scores={ lumenfuchs.purity=..-12 }] only lumenfuchs:damnation


# Remove targeting tag
$tag @p[nbt={ UUID: $(UUID) }, distance=..8] remove lumenfuchs.dummy.tweak_purity