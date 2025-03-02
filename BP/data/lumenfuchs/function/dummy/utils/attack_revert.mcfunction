## * AydenTFoxx @ 2025-01-15 .. 2025-03-01
## * 
## * Lowers the dummy's arm after its attack.


# Remove score
scoreboard players remove @s dummy_lib.clock 8

# Remove tag
tag @s[scores={ dummy_lib.clock=..0 }] remove dummy_lib.dummy.is_floating

# Reset score
scoreboard players reset @s[scores={ dummy_lib.clock=..0 }] dummy_lib.clock