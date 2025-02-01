## * AydenTFoxx @ 2025-01-27 .. 2025-01-29
## * 
## * Displays extra particles and removes some health when the Dummy is hit by the Cleanser.


# Display audiovisual feedback
playsound entity.wither.hurt hostile @a[distance=..32] ~ ~ ~ 0.8 0.5 0.1

particle gust ~ ~1 ~ 0.0 0.0 0.0 1 1
particle flame ~ ~1 ~ 0.2 0.4 0.2 0.05 24


# Remove health
scoreboard players remove @s lumenfuchs.health 3