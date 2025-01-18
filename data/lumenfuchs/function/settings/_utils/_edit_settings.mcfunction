## Revoke trigger
advancement revoke @s only lumenfuchs:internal/edit_settings


## Edit settings
execute if data entity @s SelectedItem.components.minecraft:custom_data."lumenfuchs.settings_dummy" \
		run function lumenfuchs:settings/_utils/write_from_book with entity @s SelectedItem.components.minecraft:custom_data."lumenfuchs.settings_dummy"