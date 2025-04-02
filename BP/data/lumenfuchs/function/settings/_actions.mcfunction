## * AydenTFoxx @ 2025-01-15 .. 2025-04-01
## * 
## * Executes all actions from the settings panel.


## Display error if allow_edit_settings is disabled
execute if data storage lumenfuchs:flags { allow_edit_settings: false } \
		run return run tellraw @s { "translate": "lumenfuchs.settings.read_only", "fallback": "Settings are read-only in this world.", "color": "red", "hover_event": { "action": "show_text", "value": [ { "translate": "lumenfuchs.settings.option_revert", "fallback": "Revert? ", "color": "yellow" }, { "translate": "lumenfuchs.settings.operator_only", "fallback": "(Requires OP)", "color": "red" } ] }, "click_event": { "action": "suggest_command", "command": "/data modify storage lumenfuchs:flags allow_edit_settings set value true" } }


## * RESET

# Appearance
execute if entity @s[scores={ lumenfuchs.settings=2010 }] run function lumenfuchs:settings/_utils/bulk_edit_material { setting: "material", material: "black_concrete" }

execute if entity @s[scores={ lumenfuchs.settings=2011 }] run data modify storage lumenfuchs:flags dummy.material.head set value black_concrete
execute if entity @s[scores={ lumenfuchs.settings=2012 }] run data modify storage lumenfuchs:flags dummy.material.torso set value black_concrete
execute if entity @s[scores={ lumenfuchs.settings=2013 }] run data modify storage lumenfuchs:flags dummy.material.left_arm set value black_concrete
execute if entity @s[scores={ lumenfuchs.settings=2014 }] run data modify storage lumenfuchs:flags dummy.material.right_arm set value black_concrete
execute if entity @s[scores={ lumenfuchs.settings=2015 }] run data modify storage lumenfuchs:flags dummy.material.left_leg set value black_concrete
execute if entity @s[scores={ lumenfuchs.settings=2016 }] run data modify storage lumenfuchs:flags dummy.material.right_leg set value black_concrete

execute if entity @s[scores={ lumenfuchs.settings=2020 }] run function lumenfuchs:settings/_utils/bulk_edit_material { setting: "material_hurt", material: "red_concrete" }

execute if entity @s[scores={ lumenfuchs.settings=2021 }] run data modify storage lumenfuchs:flags dummy.material_hurt.head set value red_concrete
execute if entity @s[scores={ lumenfuchs.settings=2022 }] run data modify storage lumenfuchs:flags dummy.material_hurt.torso set value red_concrete
execute if entity @s[scores={ lumenfuchs.settings=2023 }] run data modify storage lumenfuchs:flags dummy.material_hurt.left_arm set value red_concrete
execute if entity @s[scores={ lumenfuchs.settings=2024 }] run data modify storage lumenfuchs:flags dummy.material_hurt.right_arm set value red_concrete
execute if entity @s[scores={ lumenfuchs.settings=2025 }] run data modify storage lumenfuchs:flags dummy.material_hurt.left_leg set value red_concrete
execute if entity @s[scores={ lumenfuchs.settings=2026 }] run data modify storage lumenfuchs:flags dummy.material_hurt.right_leg set value red_concrete

execute if entity @s[scores={ lumenfuchs.settings=2010..2016 }] run function lumenfuchs:settings/_menu/appearance_i with storage lumenfuchs:flags dummy.material
execute if entity @s[scores={ lumenfuchs.settings=2020..2026 }] run function lumenfuchs:settings/_menu/appearance_ii with storage lumenfuchs:flags dummy.material_hurt

# Ambience
execute if entity @s[scores={ lumenfuchs.settings=203 }] run data modify storage lumenfuchs:flags dummy.ambience_presence set value block.stone.break
execute if entity @s[scores={ lumenfuchs.settings=204 }] run data modify storage lumenfuchs:flags dummy.ambience_target set value ambient.soul_sand_valley.additions

execute if entity @s[scores={ lumenfuchs.settings=203..204 }] run function lumenfuchs:settings/_menu/ambience with storage lumenfuchs:flags dummy

# Behavior
execute if entity @s[scores={ lumenfuchs.settings=205 }] run data modify storage lumenfuchs:flags dummy.stare_player set value true
execute if entity @s[scores={ lumenfuchs.settings=206 }] run data modify storage lumenfuchs:flags dummy.stare_player_distance set value 128

execute if entity @s[scores={ lumenfuchs.settings=207 }] run data modify storage lumenfuchs:flags dummy.stalk_player set value true
execute if entity @s[scores={ lumenfuchs.settings=208 }] run data modify storage lumenfuchs:flags dummy.stalk_player_distance set value 512
execute if entity @s[scores={ lumenfuchs.settings=209 }] run data modify storage lumenfuchs:flags dummy.stalk_player_threshold set value 8

execute if entity @s[scores={ lumenfuchs.settings=210 }] run data modify storage lumenfuchs:flags dummy.harm_on_touch set value true

execute if entity @s[scores={ lumenfuchs.settings=211 }] run data modify storage lumenfuchs:flags dummy.attack_player set value true
execute if entity @s[scores={ lumenfuchs.settings=212 }] run data modify storage lumenfuchs:flags dummy.attack_player_distance set value 4

execute if entity @s[scores={ lumenfuchs.settings=213 }] run data modify storage lumenfuchs:flags dummy.freeze_when_stared set value true
execute if entity @s[scores={ lumenfuchs.settings=217 }] run data modify storage lumenfuchs:flags dummy.drop_loot set value true

execute if entity @s[scores={ lumenfuchs.settings=205..213 }] run function lumenfuchs:settings/_menu/behavior with storage lumenfuchs:flags dummy
execute if entity @s[scores={ lumenfuchs.settings=217 }] run function lumenfuchs:settings/_menu/behavior with storage lumenfuchs:flags dummy

# Misc
execute if entity @s[scores={ lumenfuchs.settings=214 }] run data modify storage lumenfuchs:flags dummy.forceload_chunks set value true
execute if entity @s[scores={ lumenfuchs.settings=215 }] run data modify storage lumenfuchs:flags dummy.natural_spawning set value true

execute if entity @s[scores={ lumenfuchs.settings=216 }] run data modify storage lumenfuchs:flags dummy.spawn_under_skylight set value true
execute if entity @s[scores={ lumenfuchs.settings=218 }] run data modify storage lumenfuchs:flags dummy.griefing set value true

execute if entity @s[scores={ lumenfuchs.settings=214..216 }] run function lumenfuchs:settings/_menu/misc with storage lumenfuchs:flags dummy
execute if entity @s[scores={ lumenfuchs.settings=218 }] run function lumenfuchs:settings/_menu/misc with storage lumenfuchs:flags dummy

execute if entity @s[scores={ lumenfuchs.settings=400 }] run data remove storage lumenfuchs:flags first_load

execute if entity @s[scores={ lumenfuchs.settings=500 }] run data remove storage lumenfuchs:flags dummy
execute if entity @s[scores={ lumenfuchs.settings=500 }] run data remove storage lumenfuchs:flags first_load
execute if entity @s[scores={ lumenfuchs.settings=500 }] run data remove storage lumenfuchs:flags first_load_true
execute if entity @s[scores={ lumenfuchs.settings=500 }] run data remove storage lumenfuchs:flags first_load_settings

execute if entity @s[scores={ lumenfuchs.settings=400..500 }] run schedule function lumenfuchs:load 20t


## * SET

# Behavior
execute as @s[scores={ lumenfuchs.settings=301 }] run function lumenfuchs:settings/stare_player
execute as @s[scores={ lumenfuchs.settings=302 }] run function lumenfuchs:settings/stalk_player
execute as @s[scores={ lumenfuchs.settings=303 }] run function lumenfuchs:settings/harm_on_touch
execute as @s[scores={ lumenfuchs.settings=304 }] run function lumenfuchs:settings/attack_player

execute as @s[scores={ lumenfuchs.settings=307 }] run function lumenfuchs:settings/freeze_when_stared
execute as @s[scores={ lumenfuchs.settings=317 }] run function lumenfuchs:settings/drop_loot

execute if entity @s[scores={ lumenfuchs.settings=301..304 }] run function lumenfuchs:settings/_menu/behavior with storage lumenfuchs:flags dummy
execute if entity @s[scores={ lumenfuchs.settings=307 }] run function lumenfuchs:settings/_menu/behavior with storage lumenfuchs:flags dummy
execute if entity @s[scores={ lumenfuchs.settings=317 }] run function lumenfuchs:settings/_menu/behavior with storage lumenfuchs:flags dummy

# Misc
execute as @s[scores={ lumenfuchs.settings=305 }] run function lumenfuchs:settings/forceload
execute as @s[scores={ lumenfuchs.settings=306 }] run function lumenfuchs:settings/natural_spawning

execute as @s[scores={ lumenfuchs.settings=316 }] run function lumenfuchs:settings/spawn_under_skylight
execute as @s[scores={ lumenfuchs.settings=318 }] run function lumenfuchs:settings/griefing

execute if entity @s[scores={ lumenfuchs.settings=305..306 }] run function lumenfuchs:settings/_menu/misc with storage lumenfuchs:flags dummy
execute if entity @s[scores={ lumenfuchs.settings=316 }] run function lumenfuchs:settings/_menu/misc with storage lumenfuchs:flags dummy
execute if entity @s[scores={ lumenfuchs.settings=318 }] run function lumenfuchs:settings/_menu/misc with storage lumenfuchs:flags dummy


## * EDIT

# Appearance
execute as @s[scores={ lumenfuchs.settings=3080 }] run function lumenfuchs:settings/_utils/give_edit_book { setting: "material_all" }

execute as @s[scores={ lumenfuchs.settings=3081 }] run function lumenfuchs:settings/_utils/give_edit_book { setting: "material.head" }
execute as @s[scores={ lumenfuchs.settings=3082 }] run function lumenfuchs:settings/_utils/give_edit_book { setting: "material.torso" }
execute as @s[scores={ lumenfuchs.settings=3083 }] run function lumenfuchs:settings/_utils/give_edit_book { setting: "material.left_arm" }
execute as @s[scores={ lumenfuchs.settings=3084 }] run function lumenfuchs:settings/_utils/give_edit_book { setting: "material.right_arm" }
execute as @s[scores={ lumenfuchs.settings=3085 }] run function lumenfuchs:settings/_utils/give_edit_book { setting: "material.left_leg" }
execute as @s[scores={ lumenfuchs.settings=3086 }] run function lumenfuchs:settings/_utils/give_edit_book { setting: "material.right_leg" }

execute as @s[scores={ lumenfuchs.settings=3090 }] run function lumenfuchs:settings/_utils/give_edit_book { setting: "material_hurt_all" }

execute as @s[scores={ lumenfuchs.settings=3091 }] run function lumenfuchs:settings/_utils/give_edit_book { setting: "material_hurt.head" }
execute as @s[scores={ lumenfuchs.settings=3092 }] run function lumenfuchs:settings/_utils/give_edit_book { setting: "material_hurt.torso" }
execute as @s[scores={ lumenfuchs.settings=3093 }] run function lumenfuchs:settings/_utils/give_edit_book { setting: "material_hurt.left_arm" }
execute as @s[scores={ lumenfuchs.settings=3094 }] run function lumenfuchs:settings/_utils/give_edit_book { setting: "material_hurt.right_arm" }
execute as @s[scores={ lumenfuchs.settings=3095 }] run function lumenfuchs:settings/_utils/give_edit_book { setting: "material_hurt.left_leg" }
execute as @s[scores={ lumenfuchs.settings=3096 }] run function lumenfuchs:settings/_utils/give_edit_book { setting: "material_hurt.right_leg" }

# Ambience
execute as @s[scores={ lumenfuchs.settings=310 }] run function lumenfuchs:settings/_utils/give_edit_book { setting: "ambience_presence" }
execute as @s[scores={ lumenfuchs.settings=311 }] run function lumenfuchs:settings/_utils/give_edit_book { setting: "ambience_target" }

# Behavior
execute as @s[scores={ lumenfuchs.settings=312 }] run function lumenfuchs:settings/_utils/give_edit_book { setting: "stare_player_distance" }

execute as @s[scores={ lumenfuchs.settings=313 }] run function lumenfuchs:settings/_utils/give_edit_book { setting: "stalk_player_distance" }
execute as @s[scores={ lumenfuchs.settings=314 }] run function lumenfuchs:settings/_utils/give_edit_book { setting: "stalk_player_threshold" }

execute as @s[scores={ lumenfuchs.settings=315 }] run function lumenfuchs:settings/_utils/give_edit_book { setting: "attack_player_distance" }

## (Confirm Setting)

# Fail if no book is held
execute as @s[scores={ lumenfuchs.settings=300 }] unless items entity @s weapon.mainhand writable_book \
		run return run tellraw @s { "translate": "lumenfuchs.settings.confirm_edit_fail_other", "fallback": "You must hold the book to edit this setting!", "color": "red" }

# Write to storage
execute as @s[scores={ lumenfuchs.settings=300 }] run function lumenfuchs:settings/_utils/write_to_storage with entity @s SelectedItem.components.minecraft:custom_data."lumenfuchs.settings_dummy"

## Overwrite Materials settings when "material_all" is present
execute if data storage lumenfuchs:flags dummy.material_all run function lumenfuchs:settings/_utils/bulk_replace_material { setting: "material" }
execute if data storage lumenfuchs:flags dummy.material_hurt_all run function lumenfuchs:settings/_utils/bulk_replace_material { setting: "material_hurt" }