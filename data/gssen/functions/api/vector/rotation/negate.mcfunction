#> gssen:api > vector/rotation/negate
#--------------------
# -> vector: float[2] (rotation vector)
#--------------------
# <- result: float[2] (rotation vector)
#--------------------
#> gets the negative (rotation facing the exact opposite direction) of <vector>.
#--------------------
#- builtin precision.
#--------------------
# ...
#--------------------

$data modify storage gssen:in negate set value $(in)

execute store result score *negate.yrot gssen_var run data get storage gssen:in negate.vector[1] 100000
scoreboard players operation *negate.yrot gssen_var *= *-1 gssen_const
execute store result storage gssen:var negate.yrot float 0.00001 run scoreboard players get *negate.yrot gssen_var
data modify storage gssen:var negate.xrot set from storage gssen:in negate.vector[0]

execute summon marker run function gssen:impl/vector/rotation/negate/do with storage gssen:var negate

data remove storage gssen:var negate
data remove storage gssen:in negate
scoreboard players reset *negate.yrot gssen_var