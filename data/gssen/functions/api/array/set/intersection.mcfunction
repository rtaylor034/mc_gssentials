#> gssen:api > array/set/intersection
#--------------------
# -> a: obj[]
# -> b: obj[]
#--------------------
# <- result: obj[]
#--------------------
#> gets all objects that are shared between <a> and <b>
#--------------------
#- if the size of <a> and <b> are known, set <a> to the smaller of the two for maximum performance.
#--------------------
# 0 - <a> and <b> have no elements in common.
# 1 - <a> and <b> have at least 1 intersection.
#--------------------

$data modify storage gssen:in intersection set value $(in)
data modify storage gssen:out intersection.result set value []
scoreboard players set *intersection gssen_return 0

execute store result storage gssen:in repeat.in.n int 1 if data storage gssen:in intersection.a[]
data modify storage gssen:in repeat.in.function set value "gssen:impl/array/set/intersection/iter"
data modify storage gssen:in repeat.in.with set value "gssen:in intersection"
function gssen:api/inline/repeat with storage gssen:in repeat

data remove storage gssen:in intersection
data remove storage gssen:var intersection
scoreboard players reset *intersection.match gsen_var

execute if data storage gssen:out intersection.result[] run scoreboard players set *intersection gssen_return 1
return run scoreboard players get *intersection gssen_return