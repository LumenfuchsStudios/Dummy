## * AydenTFoxx @ 2025-01-27
## * 
## * Simulates the Seeker taking damage.


# Remove trigger
data remove entity @s attack

# Ignore if invulnerable
execute if entity @s[tag=lumenfuchs.dummy.is_hurt] run return fail


# If harming item was Golden Arcane's Remover Stick, instantly perish.
execute if items entity @p weapon.mainhand stick[custom_data={ goldark.items.remover_stick: true }] run return run function lumenfuchs:dummy/utils/force_remove
execute if items entity @p weapon.mainhand debug_stick[custom_data={ goldark.items.remover_stick: true }] run return run function lumenfuchs:dummy/utils/force_remove

# If harming item was The Cleanser, deal extra damage
execute if items entity @p weapon.mainhand stick[custom_data={ lumenfuchs.items.dummy_remover: true }] run function lumenfuchs:dummy/events/hit_by_cleanser


# Display audiovisual feedback
execute unless entity @s[tag=lumenfuchs.dummy.is_dead] run playsound entity.generic.hurt neutral @a[distance=..16] ~ ~ ~
$execute unless entity @s[tag=lumenfuchs.dummy.is_dead] run particle block{ block_state: { Name: $(torso) } } ~ ~1 ~ 0.0 0.0 0.0 1.0 12

# Display "red" hurt overlay
function lumenfuchs:dummy/utils/set_hurt_overlay


# Remove health
scoreboard players remove @s lumenfuchs.health 1

execute if score @s lumenfuchs.health matches ..0 run return run function lumenfuchs:dummy/events/death

# Stop attack
execute if entity @s[tag=lumenfuchs.dummy.is_attacking] run scoreboard players set @n[type=item_display, tag=lumenfuchs.dummy_limb.l_arm, distance=..3] lumenfuchs.clock 1
execute if entity @s[tag=lumenfuchs.dummy.is_attacking] as @n[type=item_display, tag=lumenfuchs.dummy_limb.l_arm, distance=..3] run function lumenfuchs:dummy/utils/attack_revert

# Stop walking
tag @s[tag=lumenfuchs.dummy.is_walking] remove lumenfuchs.dummy.is_walking


# Apply knockback
execute facing entity @p eyes run function lumenfuchs:dummy/physics/move { direction: "^ ^1 ^-0.5" }

# Add tag
tag @s add lumenfuchs.dummy.is_hurt