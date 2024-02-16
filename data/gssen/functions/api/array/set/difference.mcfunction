#> gssen:api > array/set/difference
#--------------------
# -> a: obj[]
# -> b: obj[]
# => compare: {only: string[]} | {without: string[]} | {} = {}
#--------------------
# <- unique_a: obj[]
# <- unique_b: obj[]
#--------------------
#> gets all objects that are unique to <a> (not in <b>) and vice versa.
#--------------------
#- if <compare>: compares only or without specified tags for each object. (See gssen:api/object/partial)
#- if the size of <a> and <b> are known, set <a> to the smaller of the two for maximum performance.
#--------------------
# 0 - <a> and <b> have no differences.
# 1 - <a> and <b> have at least 1 difference.
#--------------------

data modify storage gssen:out difference.unique_a set value []
data modify storage gssen:out difference.unique_b set value []
scoreboard players set *difference gssen_return 0

data merge storage gssen:in {repeat:{function:"gssen:impl/array/set/difference/iter", with:"gssen:in difference"}}
execute store result storage gssen:in repeat.n int 1 if data storage gssen:in difference.a[]
function gssen:api/inline/repeat

#{gssen:in -> difference.b} is affected by the above loop
data modify storage gssen:out difference.unique_b set from storage gssen:in difference.b

data remove storage gssen:in difference
data remove storage gssen:var difference
scoreboard players reset *difference.match gssen_var
scoreboard players reset *difference.tags gssen_var

execute if data storage gssen:out difference.unique_a[] run scoreboard players set *difference gssen_return 1
execute if data storage gssen:out difference.unique_b[] run scoreboard players set *difference gssen_return 1
return run scoreboard players get *difference gssen_return