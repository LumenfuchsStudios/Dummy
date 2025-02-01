$data modify storage lumenfuchs:flags dummy.$(setting).head set from storage lumenfuchs:flags dummy.$(setting)_all
$data modify storage lumenfuchs:flags dummy.$(setting).torso set from storage lumenfuchs:flags dummy.$(setting)_all

$data modify storage lumenfuchs:flags dummy.$(setting).left_arm set from storage lumenfuchs:flags dummy.$(setting)_all
$data modify storage lumenfuchs:flags dummy.$(setting).right_arm set from storage lumenfuchs:flags dummy.$(setting)_all

$data modify storage lumenfuchs:flags dummy.$(setting).left_leg set from storage lumenfuchs:flags dummy.$(setting)_all
$data modify storage lumenfuchs:flags dummy.$(setting).right_leg set from storage lumenfuchs:flags dummy.$(setting)_all

$data remove storage lumenfuchs:flags dummy.$(setting)_all