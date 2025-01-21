## * AydenTFoxx @ 2025-01-14
## * 
## * Freezes the Dummy then removes it after a brief pause.


# Play audio feedback
execute unless entity @s[tag=dummy_lib.dummy.is_dead] run playsound block.glass.break neutral @a[distance=..16] ~ ~ ~
execute unless entity @s[tag=dummy_lib.dummy.is_dead] unless data storage dummy_lib:flags { debug_mode: 1b } run playsound block.portal.travel neutral @a[distance=..16] ~ ~ ~ 1 0.6


# Inflict Darkness
effect give @a[distance=..16] darkness 4 0

# Display visual feedback
particle large_smoke ~ ~0.5 ~ 0.0 0.2 0.0 0.01 4
particle portal ~ ~1 ~ 0.0 0.2 0.0 0.5 8


# Run death event
function dummy_lib:events/death