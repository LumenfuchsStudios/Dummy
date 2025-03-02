## * AydenTFoxx @ 2025-01-31 .. 2025-02-20
## * 
## * Updates all of the dummy entity's materials to the given value.


$data modify storage dummy_lib:flags dummy.$(setting).head set value $(material)
$data modify storage dummy_lib:flags dummy.$(setting).torso set value $(material)

$data modify storage dummy_lib:flags dummy.$(setting).left_arm set value $(material)
$data modify storage dummy_lib:flags dummy.$(setting).right_arm set value $(material)

$data modify storage dummy_lib:flags dummy.$(setting).left_leg set value $(material)
$data modify storage dummy_lib:flags dummy.$(setting).right_leg set value $(material)