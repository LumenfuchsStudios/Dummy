## * AydenTFoxx @ 2025-04-08 .. 2025-04-09
## * 
## * Displays the distance to the nearest Dummy Altar structure.


# Store distance
execute store result score @s dummy_lib.momentum run locate structure lumenfuchs:dummy_altar

# Display distance
title @s actionbar { "translate": "-{[ %s ]}-", "color": "yellow", "with": [ { "score": { "name": "@s", "objective": "dummy_lib.momentum" } } ] }


# Reset score
scoreboard players reset @s dummy_lib.momentum

# Revoke trigger
advancement revoke @s only lumenfuchs:internal/dummy_map/using_item