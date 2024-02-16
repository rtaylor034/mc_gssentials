#> gssen:api > vector/space/negate
#--------------------
# -> vector: double[3]
#--------------------
# <- result: double[3]
#--------------------
#> multiplies all values of <vector> by -1.
#--------------------
#- literally calls gssen:api/decimal/negate on all values of <vector>.
#--------------------
# ...
#--------------------

data modify storage gssen:var _negate.out.vector set value [0d, 0d, 0d]

data modify storage gssen:in negate.number set from storage gssen:in negate.vector[0]
function gssen:api/decimal/negate
data modify storage gssen:var _negate.out.vector[0] set from storage gssen:out negate.result

data modify storage gssen:in negate.number set from storage gssen:in negate.vector[1]
function gssen:api/decimal/negate
data modify storage gssen:var _negate.out.vector[1] set from storage gssen:out negate.result

data modify storage gssen:in negate.number set from storage gssen:in negate.vector[2]
function gssen:api/decimal/negate
data modify storage gssen:var _negate.out.vector[2] set from storage gssen:out negate.result

data modify storage gssen:out negate.result set from storage gssen:var _negate.out.vector

data remove storage gssen:var _negate
data remove storage gssen:in negate