## * AydenTFoxx @ 2025-01-11 .. 2025-01-13
## * 
## * Initializes features required for the proper functioning of the datapack.


## # INIT

# Wait until Player is loaded
execute unless entity @e[type=player] run return run schedule function lumenfuchs:load 20t

# Display join message
execute unless data storage lumenfuchs:flags { first_load_true: true } run tellraw @a { "translate": "%s has joined the world.", "color": "yellow", "with": [ { "selector": "@p" } ], "hoverEvent": { "action": "show_text", "contents": [ "First time here? Try running ", { "text": "/function lumenfuchs:help", "color": "yellow" }, " for a start!" ] }, "clickEvent": { "action": "suggest_command", "value": "/function lumenfuchs:help" } }

execute if data storage lumenfuchs:flags { first_load_true: true } unless data storage lumenfuchs:flags { first_load: true } run tellraw @a { "text": "Hello again.", "color": "yellow", "hoverEvent": { "action": "show_text", "contents": [ "Settings and Dummy summoning at ", { "text": "/function lumenfuchs:help", "color": "yellow" } ] }, "clickEvent": { "action": "suggest_command", "value": "/function lumenfuchs:help" }  }


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
execute unless score #lumenfuchs_tick_rate lumenfuchs.dummy matches 1.. \
        run scoreboard players set #lumenfuchs_tick_rate lumenfuchs.dummy 1


# Enable Settings trigger for all players
scoreboard players enable @a lumenfuchs.settings


## # FLAGS

# Initialize settings
execute unless data storage lumenfuchs:flags { first_load: true } run function lumenfuchs:load_settings

# Set first load
execute unless data storage lumenfuchs:flags { first_load: true } run data modify storage lumenfuchs:flags first_load_true set value true
execute unless data storage lumenfuchs:flags { first_load: true } run data modify storage lumenfuchs:flags first_load set value true