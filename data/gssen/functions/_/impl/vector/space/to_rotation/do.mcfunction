#> gssen:_/impl/vector/space/to_rotation/do
#--------------------
# @api
#--------------------

$execute facing ~$(x) ~$(y) ~$(z) run tp @s ~ ~ ~ ~ ~
execute at @s run data modify storage gssen:out to_rotation.result set from entity @s Rotation

kill @s