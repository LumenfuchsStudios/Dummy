## * AydenTFoxx @ 2025-01-27
## * 
## * Summons a Seeker dummy entity.


# Summon Seeker
function lumenfuchs:seeker/summon

# Give advancement
advancement grant @p[advancements={ lumenfuchs:the_seeker=false }, distance=..8] only lumenfuchs:the_seeker


# Remove vessel
kill @s[type=#lumenfuchs:technical]