#> gssen:api > vector/negate
#--------------------
# -> vector: double[3]
#--------------------
# <- result: double[3]
#--------------------
#> multiplies all values of <vector> by -1, keeping exact precision.
#--------------------
# ...
#--------------------
# ...
#--------------------

$data modify storage gssen:in negate set value $(in)

data modify storage gssen:var negate.call.in.space set from storage gssen:in negate.vector

function gssen:api/vector/space2rot with storage gssen:in negate.call
function gssen:api/vector/magnitude with storage gssen:in negate.call

execute store result score *negate.yrot gssen_var run data get storage gssen:var space2rot.result[1] 100000
scoreboard players operation *negate.yrot gssen_var *= *-1 gssen_const
execute store result storage gssen:var negate.marker.yrot float 0.00001 run scoreboard players get *negate.yrot gssen_var
data modify storage gssen:var negate.marker.xrot set from storage gssen:out space2rot.result[0]

scoreboard players reset *negate.yrot gssen_var
data remove storage gssen:var negate
data remove storage gssen:in negate