## * AydenTFoxx @ 2025-01-21
## * 
## * Custom damage function for the Dummy/Stall entity.

##? Function Arguments:
#? amount: The amount of damage dealt to the entity.


# Remove health
$scoreboard players remove @s dummy_lib.health $(amount)

# Perish if health is 0 or lower
execute if score @s dummy_lib.health matches ..0 run return run function the_stall:events/death


# Run hurt event
function the_stall:events/hurt