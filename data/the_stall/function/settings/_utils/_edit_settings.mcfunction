# Revoke trigger
advancement revoke @s only the_stall:internal/edit_settings

# Ignore if Player just triggered a "Change setting?" action
execute if score @s the_stall.settings matches 300.. run return fail


# Edit settings
execute if data entity @s SelectedItem.components.minecraft:custom_data."lumenfuchs.settings_stall" \
		run function the_stall:settings/_utils/write_from_book with entity @s SelectedItem.components.minecraft:custom_data."lumenfuchs.settings_stall"