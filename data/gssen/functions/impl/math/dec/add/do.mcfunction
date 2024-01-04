#> gssen:impl/math/dec/add/do
# as : marker
# at : (0, 0, 0)
#--------------------
#- gssen:api/math/dec/add
#--------------------

$tp @s $(a) ~ ~
$execute at @s run tp ~$(b) ~ ~

data modify storage gssen:out add.result set from entity @s Pos[0]

kill @s