## * AydenTFoxx @ 2025-01-15 .. 2025-02-20
## * 
## * Evaluates if a limb's GUID is the same as the dummy entity's.

##? IF @s dummy_lib.guid EQUALS @n[type=dummy, r=2] dummy_lib.guid
##? THEN RETURN True
##? OTHERWISE RETURN False


execute if score @s dummy_lib.guid = @n[type=interaction, tag=dummy_lib.entity, distance=..2] dummy_lib.guid run return 1

return 0