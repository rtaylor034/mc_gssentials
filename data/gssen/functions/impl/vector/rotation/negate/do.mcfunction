#> gssen:impl/vector/rotation/negate/do
#--------------------
# @api
#--------------------

$execute rotated $(xrot) $(yrot) run tp @s ~ ~ ~ ~180 ~
data modify storage gssen:out negate.result set from entity @s Rotation

kill @s