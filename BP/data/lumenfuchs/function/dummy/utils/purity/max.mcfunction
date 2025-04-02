## * AydenTFoxx @ 2025-04-01
## * 
## * Plays a calm tune and resets the player's natural spawning clock.


# Display audiovisual feedback
playsound block.amethyst_block.chime master @a[distance=..32] ~ ~1 ~ 2 1.5 0.1

particle end_rod ~ ~1 ~ 0.1 0.2 0.1 0.1 24
particle enchant ~ ~1 ~ 0.1 0.1 0.1 1 16 force


# Reset score
scoreboard players reset @s dummy_lib.dummy