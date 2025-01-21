## * AydenTFoxx @ 2025-01-14 .. 2025-01-17
## * 
## * Simulates the dummy taking damage.


# If harming item was Golden Arcane's Remover Stick, instantly perish.
execute if items entity @p weapon.mainhand stick[custom_data={ goldark.items.remover_stick: true }] run return run function dummy_lib:entity/kill
execute if items entity @p weapon.mainhand debug_stick[custom_data={ goldark.items.remover_stick: true }] run return run function dummy_lib:entity/kill


# Stop attack
execute if entity @s[tag=dummy_lib.dummy.is_attacking] run scoreboard players set @n[type=item_display, tag=dummy_lib.dummy_limb.l_arm, tag=the_stall.entity.stall_limb, distance=..2] dummy_lib.clock 1
execute if entity @s[tag=dummy_lib.dummy.is_attacking] as @n[type=item_display, tag=dummy_lib.dummy_limb.l_arm, distance=..2] run function the_stall:utils/attack_revert

# Run hurt event
function dummy_lib:events/hurt { namespace: "the_stall" }