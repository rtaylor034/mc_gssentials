#> gssen:impl/decimal/negate/do
#--------------------
# @api
#--------------------

$execute rotated 90 0 run tp @s ^ ^ ^$(number)
data modify storage gssen:out negate.result set from entity @s Pos[0]

kill @s