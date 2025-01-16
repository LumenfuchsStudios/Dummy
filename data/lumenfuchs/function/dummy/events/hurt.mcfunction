## * AydenTFoxx @ 2025-01-14
## * 
## * Simulates the dummy taking damage.


# Remove trigger
data remove entity @s attack

# Ignore if invulnerable
execute if entity @s[tag=lumenfuchs.dummy.is_hurt] run return fail


# If harming item was Golden Arcane's Remover Stick, instantly perish.
execute if items entity @p weapon.mainhand debug_stick[custom_data={ goldark.items.remover_stick: true }] run summon lightning_bolt

execute if items entity @p weapon.mainhand debug_stick[custom_data={ goldark.items.remover_stick: true }] run scoreboard players set @s lumenfuchs.clock 40
execute if items entity @p weapon.mainhand debug_stick[custom_data={ goldark.items.remover_stick: true }] run return run tag @s add lumenfuchs.dummy.is_dead


# Display audiovisual feedback
execute unless entity @s[tag=lumenfuchs.dummy.is_dead] run playsound entity.generic.hurt neutral @a[distance=..16] ~ ~ ~
$execute unless entity @s[tag=lumenfuchs.dummy.is_dead] run particle block{ block_state: $(material) } ~ ~1 ~ 0.0 0.0 0.0 1.0 12

# Display "red" hurt overlay
execute as @e[type=item_display, tag=lumenfuchs.entity.dummy_limb, distance=..3] if function lumenfuchs:dummy/utils/is_matching_guid \
		run data modify entity @s item.id set string storage lumenfuchs:flags dummy.material_hurt


# Remove health
scoreboard players remove @s lumenfuchs.health 1

execute if score @s lumenfuchs.health matches ..0 run return run function lumenfuchs:dummy/events/death

# Stop attack
execute if entity @s[tag=lumenfuchs.dummy.is_attacking] run scoreboard players set @n[type=item_display, tag=lumenfuchs.dummy_limb.l_arm, distance=..2] lumenfuchs.clock 1
execute if entity @s[tag=lumenfuchs.dummy.is_attacking] as @n[type=item_display, tag=lumenfuchs.dummy_limb.l_arm, distance=..2] run function lumenfuchs:dummy/utils/attack_revert

# Stop walking
tag @s[tag=lumenfuchs.dummy.is_walking] remove lumenfuchs.dummy.is_walking


# Apply knockback
execute facing entity @p eyes run function lumenfuchs:dummy/physics/move { direction: "^ ^1 ^-0.5" }

# Add tag
tag @s add lumenfuchs.dummy.is_hurt