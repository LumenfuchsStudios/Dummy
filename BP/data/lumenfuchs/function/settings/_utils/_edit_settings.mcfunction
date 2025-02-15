## * AydenTFoxx @ 2025-01-18 .. 2025-02-14
## * 
## * Obtains the inputted value from a Settings Book, then prompts the user to change its respective setting.


# Revoke trigger
advancement revoke @s only lumenfuchs:internal/edit_settings

# Ignore if Player just triggered a "Change setting?" action
execute if score @s lumenfuchs.settings matches 300.. run return fail


# Edit settings
execute if data entity @s SelectedItem.components.minecraft:custom_data."lumenfuchs.settings_dummy" \
		run function lumenfuchs:settings/_utils/write_from_book with entity @s SelectedItem.components.minecraft:custom_data."lumenfuchs.settings_dummy"