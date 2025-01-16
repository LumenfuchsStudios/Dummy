# Ignore if allow_edit_settings is disabled
execute if data storage lumenfuchs:flags { allow_edit_settings: false } run return fail


## RESET

# Appearance
execute if entity @a[scores={ lumenfuchs.settings=201 }] run data modify storage lumenfuchs:flags dummy.material set value black_concrete
execute if entity @a[scores={ lumenfuchs.settings=202 }] run data modify storage lumenfuchs:flags dummy.material_hurt set value red_concrete

# Ambience
execute if entity @a[scores={ lumenfuchs.settings=203 }] run data modify storage lumenfuchs:flags dummy.ambience_presence set value block.stone.break
execute if entity @a[scores={ lumenfuchs.settings=204 }] run data modify storage lumenfuchs:flags dummy.ambience_target set value ambient.soul_sand_valley.additions

# Behavior
execute if entity @a[scores={ lumenfuchs.settings=205 }] run data modify storage lumenfuchs:flags dummy.stare_player set value true
execute if entity @a[scores={ lumenfuchs.settings=206 }] run data modify storage lumenfuchs:flags dummy.stare_player_distance set value 128

execute if entity @a[scores={ lumenfuchs.settings=207 }] run data modify storage lumenfuchs:flags dummy.stalk_player set value true
execute if entity @a[scores={ lumenfuchs.settings=208 }] run data modify storage lumenfuchs:flags dummy.stalk_player_distance set value 512
execute if entity @a[scores={ lumenfuchs.settings=209 }] run data modify storage lumenfuchs:flags dummy.stalk_player_threshold set value 8

execute if entity @a[scores={ lumenfuchs.settings=210 }] run data modify storage lumenfuchs:flags dummy.harm_on_touch set value true

execute if entity @a[scores={ lumenfuchs.settings=211 }] run data modify storage lumenfuchs:flags dummy.attack_player set value true
execute if entity @a[scores={ lumenfuchs.settings=212 }] run data modify storage lumenfuchs:flags dummy.attack_player_distance set value 4

execute if entity @a[scores={ lumenfuchs.settings=213 }] run data modify storage lumenfuchs:flags dummy.freeze_when_stared set value true

# Misc
execute if entity @a[scores={ lumenfuchs.settings=400 }] run data remove storage lumenfuchs:flags first_load

execute if entity @a[scores={ lumenfuchs.settings=500 }] run data remove storage lumenfuchs:flags dummy
execute if entity @a[scores={ lumenfuchs.settings=500 }] run data remove storage lumenfuchs:flags first_load
execute if entity @a[scores={ lumenfuchs.settings=500 }] run data remove storage lumenfuchs:flags first_load_true
execute if entity @a[scores={ lumenfuchs.settings=500 }] run data remove storage lumenfuchs:flags first_load_settings

execute if entity @a[scores={ lumenfuchs.settings=400..500 }] run schedule function lumenfuchs:load 20t


## SET

# Behavior
execute as @a[scores={ lumenfuchs.settings=301 }] run function lumenfuchs:settings/stare_player
execute as @a[scores={ lumenfuchs.settings=302 }] run function lumenfuchs:settings/stalk_player
execute as @a[scores={ lumenfuchs.settings=303 }] run function lumenfuchs:settings/harm_on_touch
execute as @a[scores={ lumenfuchs.settings=304 }] run function lumenfuchs:settings/attack_player
execute as @a[scores={ lumenfuchs.settings=307 }] run function lumenfuchs:settings/freeze_when_stared

# Misc
execute as @a[scores={ lumenfuchs.settings=305 }] run function lumenfuchs:settings/forceload
execute as @a[scores={ lumenfuchs.settings=306 }] run function lumenfuchs:settings/natural_spawning