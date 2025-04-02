## * AydenTFoxx @ 2025-04-01
## * 
## * Plays a grim tune and sets the player to spawn a Dummy after a brief grace period.


# Display audiovisual feedback
playsound block.respawn_anchor.set_spawn master @a[distance=..32] ~ ~1 ~ 2 0.8 0.2

particle angry_villager ~ ~ ~ 0.5 0.5 0.5 0.5 8
particle portal ~ ~1 ~ 0.1 0.3 0.1 0.5 24 force


# Set score
scoreboard players set @s dummy_lib.dummy 3600