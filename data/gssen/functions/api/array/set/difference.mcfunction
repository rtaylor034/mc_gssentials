#> gssen:api > array/set/difference
#--------------------
# -> a: obj[]
# -> b: obj[]
#--------------------
# <- unique_a: obj[]
# <- unique_b: obj[]
#--------------------
#> gets all objects that are unique to <a> (not in <b>) and vice versa.
#--------------------
#- if the size of <a> and <b> are known, set <a> to the smaller of the two for maximum performance.
#--------------------
# 0 - <a> and <b> are exactly the same.
# 1 - <a> and <b> have at least 1 difference.
#--------------------

data modify storage gssen:out difference.unique_a set value []
data modify storage gssen:out difference.unique_b set value []
scoreboard players set *difference gssen_return 0

execute store result storage gssen:in repeat.in.n int 1 if data storage gssen:in difference.a[]
data modify storage gssen:in repeat.in.function set value "gssen:impl/array/set/difference/iter"
data modify storage gssen:in repeat.in.with set value "gssen:in difference"
data modify storage gssen:in repeat.in.iter_declare set value "*difference.i gssen_var"
function gssen:api/inline/repeat with storage gssen:in repeat

#{gssen:in -> difference.b} is affected by the above loop
data modify storage gssen:out difference.unique_b set from storage gssen:in difference.b

data remove storage gssen:in difference
data remove storage gssen:var difference
scoreboard players reset *difference.match gsen_var
scoreboard players reset *difference.i gsen_var

execute if data storage gssen:out difference.unique_a[] run scoreboard players set *difference gssen_return 1
execute if data storage gssen:out difference.unique_b[] run scoreboard players set *difference gssen_return 1
return run scoreboard players get *difference gssen_return