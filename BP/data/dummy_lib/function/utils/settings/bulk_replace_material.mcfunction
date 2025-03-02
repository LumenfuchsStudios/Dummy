## * AydenTFoxx @ 2025-01-31 .. 2025-02-20
## * 
## * Updates all of the dummy entity's materials with its respective "_all" flag.


$data modify storage dummy_lib:flags dummy.$(setting).head set from storage dummy_lib:flags dummy.$(setting)_all
$data modify storage dummy_lib:flags dummy.$(setting).torso set from storage dummy_lib:flags dummy.$(setting)_all

$data modify storage dummy_lib:flags dummy.$(setting).left_arm set from storage dummy_lib:flags dummy.$(setting)_all
$data modify storage dummy_lib:flags dummy.$(setting).right_arm set from storage dummy_lib:flags dummy.$(setting)_all

$data modify storage dummy_lib:flags dummy.$(setting).left_leg set from storage dummy_lib:flags dummy.$(setting)_all
$data modify storage dummy_lib:flags dummy.$(setting).right_leg set from storage dummy_lib:flags dummy.$(setting)_all

$data remove storage dummy_lib:flags dummy.$(setting)_all