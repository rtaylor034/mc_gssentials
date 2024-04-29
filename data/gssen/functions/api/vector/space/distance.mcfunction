#> gssen:api > vector/space/distance
#--------------------
# -> a: double[3] (space vector)
# -> b: double[3] (space vector)
#--------------------
# <- result: double
#--------------------
#> gets the distance between <a> and <b>.
#--------------------
#- shorthand for negating <a>, adding it to <b>, then getting the magnitude.
#--------------------
# ...
#--------------------

data modify storage gssen:in negate.vector set from storage gssen:in distance.a
function gssen:api/vector/space/negate

data modify storage gssen:in add.a set from storage gssen:out negate.result
data modify storage gssen:in add.b set from storage gssen:in distance.b
function gssen:api/vector/space/add

data modify storage gssen:in magnitude.vector set from storage gssen:out add.result
function gssen:api/vector/space/magnitude

data modify storage gssen:out distance.result set from storage gssen:out magnitude.result

data remove storage gssen:in distance
data remove storage gssen:var distance