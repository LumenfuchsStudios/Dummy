## * AydenTFoxx @ 2025-01-15 .. 2025-01-19
## * 
## * Executes all actions from the settings panel.


# Ignore if allow_edit_settings is disabled
execute if data storage dummy_lib:flags { allow_edit_settings: false } run return fail


## RESET

# Appearance
execute if entity @a[scores={ the_stall.settings=201 }] run data modify storage dummy_lib:flags the_stall.material set value black_concrete
execute if entity @a[scores={ the_stall.settings=202 }] run data modify storage dummy_lib:flags the_stall.material_hurt set value red_concrete

# Ambience
execute if entity @a[scores={ the_stall.settings=203 }] run data modify storage dummy_lib:flags the_stall.ambience_presence set value block.stone.break
execute if entity @a[scores={ the_stall.settings=204 }] run data modify storage dummy_lib:flags the_stall.ambience_target set value ambient.soul_sand_valley.additions

# Behavior
execute if entity @a[scores={ the_stall.settings=205 }] run data modify storage dummy_lib:flags the_stall.stare_player set value true
execute if entity @a[scores={ the_stall.settings=206 }] run data modify storage dummy_lib:flags the_stall.stare_player_distance set value 128

execute if entity @a[scores={ the_stall.settings=207 }] run data modify storage dummy_lib:flags the_stall.stalk_player set value true
execute if entity @a[scores={ the_stall.settings=208 }] run data modify storage dummy_lib:flags the_stall.stalk_player_distance set value 512
execute if entity @a[scores={ the_stall.settings=209 }] run data modify storage dummy_lib:flags the_stall.stalk_player_threshold set value 8

execute if entity @a[scores={ the_stall.settings=210 }] run data modify storage dummy_lib:flags the_stall.harm_on_touch set value true

execute if entity @a[scores={ the_stall.settings=211 }] run data modify storage dummy_lib:flags the_stall.attack_player set value true
execute if entity @a[scores={ the_stall.settings=212 }] run data modify storage dummy_lib:flags the_stall.attack_player_distance set value 4

execute if entity @a[scores={ the_stall.settings=213 }] run data modify storage dummy_lib:flags the_stall.freeze_when_stared set value true

# Misc
execute if entity @a[scores={ the_stall.settings=214 }] run data modify storage dummy_lib:flags the_stall.forceload_chunks set value false
execute if entity @a[scores={ the_stall.settings=215 }] run data modify storage dummy_lib:flags the_stall.natural_spawning set value false

execute if entity @a[scores={ the_stall.settings=216 }] run data modify storage dummy_lib:flags the_stall.spawn_under_skylight set value false

execute if entity @a[scores={ the_stall.settings=400 }] run data remove storage dummy_lib:flags first_load

execute if entity @a[scores={ the_stall.settings=500 }] run data remove storage dummy_lib:flags the_stall
execute if entity @a[scores={ the_stall.settings=500 }] run data remove storage dummy_lib:flags first_load
execute if entity @a[scores={ the_stall.settings=500 }] run data remove storage dummy_lib:flags first_load_true
execute if entity @a[scores={ the_stall.settings=500 }] run data remove storage dummy_lib:flags first_load_settings

execute if entity @a[scores={ the_stall.settings=400..500 }] run schedule function dummy_lib:load 20t


## SET

# Behavior
execute as @a[scores={ the_stall.settings=301 }] run function the_stall:settings/stare_player
execute as @a[scores={ the_stall.settings=302 }] run function the_stall:settings/stalk_player
execute as @a[scores={ the_stall.settings=303 }] run function the_stall:settings/harm_on_touch
execute as @a[scores={ the_stall.settings=304 }] run function the_stall:settings/attack_player

execute as @a[scores={ the_stall.settings=307 }] run function the_stall:settings/freeze_when_stared

# Misc
execute as @a[scores={ the_stall.settings=305 }] run function the_stall:settings/forceload
execute as @a[scores={ the_stall.settings=306 }] run function the_stall:settings/natural_spawning

execute as @a[scores={ the_stall.settings=316 }] run function the_stall:settings/spawn_under_skylight


## EDIT

# Appearance
execute as @a[scores={ the_stall.settings=308 }] run function the_stall:settings/_utils/give_edit_book { setting: "material" }
execute as @a[scores={ the_stall.settings=309 }] run function the_stall:settings/_utils/give_edit_book { setting: "material_hurt" }

# Ambience
execute as @a[scores={ the_stall.settings=310 }] run function the_stall:settings/_utils/give_edit_book { setting: "ambience_presence" }
execute as @a[scores={ the_stall.settings=311 }] run function the_stall:settings/_utils/give_edit_book { setting: "ambience_target" }

# Behavior
execute as @a[scores={ the_stall.settings=312 }] run function the_stall:settings/_utils/give_edit_book { setting: "stare_player_distance" }

execute as @a[scores={ the_stall.settings=313 }] run function the_stall:settings/_utils/give_edit_book { setting: "stalk_player_distance" }
execute as @a[scores={ the_stall.settings=314 }] run function the_stall:settings/_utils/give_edit_book { setting: "stalk_player_threshold" }

execute as @a[scores={ the_stall.settings=315 }] run function the_stall:settings/_utils/give_edit_book { setting: "attack_player_distance" }

## [Confirm Setting]
# Fail if no book is held
execute as @a[scores={ the_stall.settings=300 }] unless items entity @s weapon.mainhand writable_book \
		run return run tellraw @s { "text": "You must hold the book for editing this setting!", "color": "red" }

# Write to storage
execute as @a[scores={ the_stall.settings=300 }] run function the_stall:settings/_utils/write_to_storage with entity @s SelectedItem.components.minecraft:custom_data."lumenfuchs.settings_stall"