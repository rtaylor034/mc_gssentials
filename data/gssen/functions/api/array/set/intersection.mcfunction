#> gssen:api > array/set/intersection
#--------------------
# -> a: obj[]
# -> b: obj[]
# => compare: {only: string[]} | {without: string[]} | {} = {}
#--------------------
# <- shared_a: obj[]
# <- shared_b: obj[]
#--------------------
#> gets all objects from <a> and <b> that share the same values for tags specified in <compare>.
#--------------------
#- if <compare>: compares only or without specified tags for each object. (See gssen:api/object/partial)
#- #> if <compare> is unspecified ({}), >shared_a< and >shared_b< are identical.
#- if the size of <a> and <b> are known, set <a> to the smaller of the two for maximum performance.
#--------------------
# 0 - <a> and <b> have no elements in common.
# 1 - <a> and <b> have at least 1 intersection.
#--------------------

$data modify storage gssen:in intersection set value $(in)
data modify storage gssen:out intersection.shared_a set value []
data modify storage gssen:out intersection.shared_b set value []
scoreboard players set *intersection gssen_return 0

execute store result storage gssen:in repeat.in.n int 1 if data storage gssen:in intersection.a[]
data modify storage gssen:in repeat.in.function set value "gssen:impl/array/set/intersection/iter"
data modify storage gssen:in repeat.in.with set value "gssen:in intersection"
function gssen:api/inline/repeat with storage gssen:in repeat

data remove storage gssen:in intersection
data remove storage gssen:var intersection
scoreboard players reset *intersection.match gsen_var

execute if data storage gssen:out intersection.shared_a[] run scoreboard players set *intersection gssen_return 1
return run scoreboard players get *intersection gssen_return