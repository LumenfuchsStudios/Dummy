## * AydenTFoxx @ 2025-01-28 .. 2025-01-31
## * 
## * Upgrades the datapack's version to the latest, then forces a "reload" of its settings.


## # COMPATIBILITY FIXES

## Set "current version" to 1 (1.0.0) if none is present
execute unless score #lumenfuchs_dummy.current_version lumenfuchs.dummy matches 1.. run scoreboard players set #lumenfuchs_dummy.current_version lumenfuchs.dummy 1


## Fix `dummy.material` and `dummy.material_hurt` flags from versions 1.2.2 and earlier

# Move old value to new "_all" flags
execute if score #lumenfuchs_dummy.current_version lumenfuchs.dummy matches ..5 run data modify storage lumenfuchs:flags dummy.material_all set from storage lumenfuchs:flags dummy.material
execute if score #lumenfuchs_dummy.current_version lumenfuchs.dummy matches ..5 run data modify storage lumenfuchs:flags dummy.material_hurt_all set from storage lumenfuchs:flags dummy.material_hurt

# Remove old (incompatible) flags
execute if score #lumenfuchs_dummy.current_version lumenfuchs.dummy matches ..5 run data remove storage lumenfuchs:flags dummy.material
execute if score #lumenfuchs_dummy.current_version lumenfuchs.dummy matches ..5 run data remove storage lumenfuchs:flags dummy.material_hurt

# Set new flags to former value
execute if score #lumenfuchs_dummy.current_version lumenfuchs.dummy matches ..5 run function lumenfuchs:settings/_utils/bulk_replace_material { setting: "material" }
execute if score #lumenfuchs_dummy.current_version lumenfuchs.dummy matches ..5 run function lumenfuchs:settings/_utils/bulk_replace_material { setting: "material_hurt" }

# DEBUG: Notify users
execute if data storage lumenfuchs:flags { debug_mode: true } if score #lumenfuchs_dummy.current_version lumenfuchs.dummy matches ..5 run tellraw @a [{ "text": "[" }, { "text": "The Dummy", "color": "gray", "bold": true, "hoverEvent": { "action": "show_text", "contents": [{ "text": "Datapack: " }, { "text": "lumenfuchs", "color": "black", "obfuscated": true }] } }, { "text": "] Migrated " }, { "text": "dummy.material", "color": "gray" }, { "text": " and " }, { "text": "dummy.material_hurt", "color": "gray" }, { "text": " to new " }, { "text": "v1.3+", "color": "yellow" }, { "text": " format." } ]


## # UPGRADE

## DEBUG: Display feedback
execute if data storage lumenfuchs:flags { debug_mode: true } run tellraw @a [{ "text": "[" }, { "text": "The Dummy", "color": "gray", "bold": true, "hoverEvent": { "action": "show_text", "contents": [{ "text": "Datapack: " }, { "text": "lumenfuchs", "color": "black", "obfuscated": true }] } }, { "translate": "] Updating datapack version to %s.", "with": [ { "score": { "name": "#lumenfuchs_dummy.target_version", "objective": "lumenfuchs.dummy" } } ] }]

# Remove first load flag
data remove storage lumenfuchs:flags first_load


# Update to latest
scoreboard players operation #lumenfuchs_dummy.current_version lumenfuchs.dummy = #lumenfuchs_dummy.target_version lumenfuchs.dummy

# Reload datapack
function lumenfuchs:load