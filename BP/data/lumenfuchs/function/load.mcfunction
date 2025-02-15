## * AydenTFoxx @ 2025-01-11 .. 2025-02-14
## * 
## * Initializes features required for the proper functioning of the datapack.


## # INIT

# Wait until Player is loaded
execute unless entity @n[type=player] run return run schedule function lumenfuchs:load 20t

# Display join message
execute unless data storage lumenfuchs:flags { first_load_true: true } run tellraw @a { "translate": "lumenfuchs.intro.init", "color": "yellow", "with": [ { "selector": "@p" } ], "hoverEvent": { "action": "show_text", "contents": { "translate": "lumenfuchs.intro.init.info", "fallback": "First time here? Try running %s for a start!", "with": [ { "text": "/function lumenfuchs:help", "color": "yellow" } ] } }, "clickEvent": { "action": "suggest_command", "value": "/trigger lumenfuchs.settings set 200" } }

execute if data storage lumenfuchs:flags { first_load_true: true } unless data storage lumenfuchs:flags { first_load: true } run tellraw @a { "translate": "lumenfuchs.intro.reload", "color": "yellow", "hoverEvent": { "action": "show_text", "contents": { "translate": "lumenfuchs.intro.reload.info", "fallback": "Your datapack got updated! Click here for a list of latest changes." } }, "clickEvent": { "action": "open_url", "value": "https://github.com/LumenfuchsStudios/Dummy/blob/main/CHANGELOG.md" } }

# Grant advancement
advancement grant @a[advancements={ lumenfuchs:root=false }] only lumenfuchs:root


## # SCOREBOARDS

## GUID (lumenfuchs)
# A globally-unique method of identifying a registered entity.
scoreboard objectives add lumenfuchs.guid dummy { "text": "GUID", "color": "gray", "bold": true }

## Clock (lumenfuchs)
# A tick-based clock for managing time-based functions.
scoreboard objectives add lumenfuchs.clock dummy { "text": "Clock", "color": "blue" }

## Dummy (lumenfuchs)
# A multiuse objective for generic usage by any function.
scoreboard objectives add lumenfuchs.dummy dummy { "text": "Dummy", "color": "green" }

## Health (lumenfuchs)
# A dummy objective for storing custom entity health.
scoreboard objectives add lumenfuchs.health dummy { "text": "Health", "color": "yellow" }

## Momentum (lumenfuchs)
# A meter of how fast an entity currently is. Used for custom movement calculation.
scoreboard objectives add lumenfuchs.momentum dummy { "text": "Momentum", "color": "red" }

## Settings (lumenfuchs)
# A trigger objective for managing the datapack's settings.
scoreboard objectives add lumenfuchs.settings trigger { "text": "Settings", "color": "aqua", "obfuscated": true }


## DEFAULT VALUES

# Initialize GUID for identifier generation
execute unless score #lumenfuchs_guid lumenfuchs.guid matches 1.. \
        run scoreboard players set #lumenfuchs_guid lumenfuchs.guid 1

# Initialize custom tick rate
execute unless score #lumenfuchs_tick_rate_a lumenfuchs.dummy matches 1.. \
        run scoreboard players set #lumenfuchs_tick_rate_a lumenfuchs.dummy 1

execute unless score #lumenfuchs_tick_rate_b lumenfuchs.dummy matches 1.. \
        run scoreboard players set #lumenfuchs_tick_rate_b lumenfuchs.dummy 2


# Enable Settings trigger for all players
scoreboard players enable @a lumenfuchs.settings


## # FLAGS

# Set datapack latest version
# 1 | 1.0.0
# 2 | 1.1.0
# 3 | 1.1.1
# 4 | 1.2.0
# 5 | 1.2.1 - 1.2.2
# 6 | 1.3.0 - 1.3.1
scoreboard players set #lumenfuchs_dummy.target_version lumenfuchs.dummy 6

# Set current version to latest
execute unless score #lumenfuchs_dummy.current_version lumenfuchs.dummy matches 1.. unless data storage lumenfuchs:flags { first_load: true } \
        run scoreboard players operation #lumenfuchs_dummy.current_version lumenfuchs.dummy = #lumenfuchs_dummy.target_version lumenfuchs.dummy


# Update to latest version
execute unless score #lumenfuchs_dummy.current_version lumenfuchs.dummy = #lumenfuchs_dummy.target_version lumenfuchs.dummy \
        run return run function lumenfuchs:upgrade_version


# Initialize settings
execute unless data storage lumenfuchs:flags { first_load: true } run function lumenfuchs:load_settings

# Set first load
execute unless data storage lumenfuchs:flags { first_load: true } run data modify storage lumenfuchs:flags first_load_true set value true
execute unless data storage lumenfuchs:flags { first_load: true } run data modify storage lumenfuchs:flags first_load set value true