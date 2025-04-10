## * AydenTFoxx @ 2025-01-27 .. 2025-04-07
## * 
## * Summons a Seeker dummy entity.


# Summon Seeker
function lumenfuchs:seeker/summon

# Give advancement
advancement grant @s only lumenfuchs:the_seeker


# Remove vessel
kill @s[type=#dummy_lib:technical]