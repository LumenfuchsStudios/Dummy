## * AydenTFoxx @ 2025-01-27 .. 2025-03-02
## * 
## * Summons a Seeker dummy entity.


# Summon Seeker
function lumenfuchs:seeker/summon

# Give advancement
advancement grant @p[gamemode=!spectator, advancements={ lumenfuchs:the_seeker=false }, distance=..8] only lumenfuchs:the_seeker


# Remove vessel
kill @s[type=#dummy_lib:technical]