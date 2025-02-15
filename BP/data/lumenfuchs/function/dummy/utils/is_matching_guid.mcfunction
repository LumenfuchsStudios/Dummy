## * AydenTFoxx @ 2025-01-15 .. 2025-01-27
## * 
## * Evaluates if a limb's GUID is the same as the dummy's.

##? IF @s lumenfuchs.guid EQUALS @n[type=dummy, r=2] lumenfuchs.guid
##? THEN RETURN True
##? OTHERWISE RETURN False


execute if score @s lumenfuchs.guid = @n[type=interaction, tag=lumenfuchs.entity, distance=..2] lumenfuchs.guid run return 1

return 0