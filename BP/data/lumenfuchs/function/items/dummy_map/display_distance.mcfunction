## * AydenTFoxx @ 2025-04-08
## * 
## * ...


execute store result score @s dummy_lib.momentum run locate structure lumenfuchs:dummy_altar

title @s actionbar { translate: "-{[ %s ]}-", color: "yellow", with: [ { score: { name: "@s", objective: "dummy_lib.momentum" } } ] }


scoreboard players reset @s dummy_lib.momentum

advancement revoke @s only lumenfuchs:internal/dummy_map/use_item