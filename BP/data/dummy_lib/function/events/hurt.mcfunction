## * AydenTFoxx @ 2025-01-14 .. 2025-04-01
## * 
## * Simulates the dummy entity taking damage.

## ? Function Arguments:
#? torso: The ID of the material for the dummy entity's hurt particles; Reuses the torso's material by default.


# Ignore if invulnerable
execute if entity @s[tag=dummy_lib.dummy.is_hurt] run return fail


# If harming item was Golden Arcane's Remover Stick, instantly perish.
execute if items entity @p weapon.mainhand stick[custom_data~{ goldark.items.remover_stick: true }] run return run function dummy_lib:utils/force_remove
execute if items entity @p weapon.mainhand debug_stick[custom_data~{ goldark.items.remover_stick: true }] run return run function dummy_lib:utils/force_remove

# If harming item was The Cleanser, deal extra damage
execute if items entity @p weapon.mainhand stick[custom_data~{ dummy_lib.items.dummy_remover: true }] run function dummy_lib:events/hit_by_cleanser
execute if items entity @p weapon.mainhand stick[custom_data~{ lumenfuchs.items.dummy_remover: true }] run function dummy_lib:events/hit_by_cleanser


# Display audiovisual feedback
execute unless entity @s[tag=dummy_lib.dummy.is_dead] run playsound entity.generic.hurt neutral @a[distance=..16] ~ ~ ~
$execute unless entity @s[tag=dummy_lib.dummy.is_dead] run particle block{ block_state: { Name: $(torso) } } ~ ~1 ~ 0.0 0.0 0.0 1.0 12


# Remove health
scoreboard players remove @s dummy_lib.health 1

execute if score @s dummy_lib.health matches ..0 run return run function dummy_lib:events/death


# Stop walking
tag @s[tag=dummy_lib.dummy.is_walking] remove dummy_lib.dummy.is_walking

# Apply knockback
execute facing entity @p eyes run function dummy_lib:physics/move { direction: "^ ^1 ^-0.5" }


# Add tag
tag @s add dummy_lib.dummy.is_hurt

# Remove trigger
data remove entity @s attack