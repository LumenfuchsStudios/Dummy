## * AydenTFoxx @ 2025-01-27 .. 2025-03-24
## * 
## * Displays extra particles and removes some health when the dummy entity is hit by the Cleanser.


# Display audiovisual feedback
playsound entity.wither.hurt hostile @a[distance=..32] ~ ~ ~ 0.8 0.5 0.1

particle gust ~ ~1 ~ 0.0 0.0 0.0 1 1
particle flame ~ ~1 ~ 0.2 0.4 0.2 0.05 24


# Remove health
scoreboard players remove @s dummy_lib.health 3

# Init hurt state
execute unless data entity @s attack run data merge entity @s { attack: { player: [I;0,0,0,0], timestamp: 0 } }