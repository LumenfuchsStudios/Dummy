## * AydenTFoxx @ 2025-01-11 .. 2025-02-20
## * 
## * Initializes features required for the proper functioning of the datapack.


## # SCOREBOARDS

## GUID (dummy_lib)
# A globally-unique method of identifying a registered entity.
scoreboard objectives add dummy_lib.guid dummy { "text": "GUID", "color": "gray", "bold": true }

## Clock (dummy_lib)
# A tick-based clock for managing time-based functions.
scoreboard objectives add dummy_lib.clock dummy { "text": "Clock", "color": "blue" }

## Dummy (dummy_lib)
# A multiuse objective for generic usage by any function.
scoreboard objectives add dummy_lib.dummy dummy { "text": "Dummy", "color": "green" }

## Health (dummy_lib)
# A dummy objective for storing custom entity health.
scoreboard objectives add dummy_lib.health dummy { "text": "Health", "color": "yellow" }

## Momentum (dummy_lib)
# A meter of how fast an entity currently is. Used for custom movement calculation.
scoreboard objectives add dummy_lib.momentum dummy { "text": "Momentum", "color": "red" }


## DEFAULT VALUES

# Initialize GUID for identifier generation
execute unless score #dummy_lib_guid dummy_lib.guid matches 1.. \
	run scoreboard players set #dummy_lib_guid dummy_lib.guid 1

# Initialize custom tick rate
execute unless score #dummy_lib_tick_rate_a dummy_lib.dummy matches 1.. \
	run scoreboard players set #dummy_lib_tick_rate_a dummy_lib.dummy 1

execute unless score #dummy_lib_tick_rate_b dummy_lib.dummy matches 1.. \
	run scoreboard players set #dummy_lib_tick_rate_b dummy_lib.dummy 2


## # FLAGS

# Set datapack latest version
# 2 | 1.0.0
scoreboard players set #dummy_lib.target_version dummy_lib.dummy 2

# Set current version to latest
execute unless score #dummy_lib.current_version dummy_lib.dummy matches 1.. unless data storage dummy_lib:flags { first_load: true } \
	run scoreboard players operation #dummy_lib.current_version dummy_lib.dummy = #dummy_lib.target_version dummy_lib.dummy


# Update to latest version
execute unless score #dummy_lib.current_version dummy_lib.dummy = #dummy_lib.target_version dummy_lib.dummy \
	run return run function dummy_lib:__core/upgrade_version

# Initialize settings
execute unless data storage dummy_lib:flags { first_load: true } run function dummy_lib:__core/load_settings


# Set first load
execute unless data storage dummy_lib:flags { first_load: true } run data modify storage dummy_lib:flags first_load_true set value true
execute unless data storage dummy_lib:flags { first_load: true } run data modify storage dummy_lib:flags first_load set value true