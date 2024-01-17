#> gssen:impl/array/set/ensure/iter
#--------------------
# @api
#--------------------

data modify storage gssen:var ensure.partial.in.object set from storage gssen:in ensure.array[0]
function gssen:api/object/partial with storage gssen:var ensure.partial

data modify storage gssen:out ensure.result append from storage gssen:in ensure.array[0]
data modify storage gssen:out ensure.compared append from storage gssen:out partial.result

execute store result score *ensure.tags gssen_var run data get storage gssen:out partial.result
execute if score *ensure.tags gssen_var matches 0 run data remove storage gssen:in ensure.array[0]

#remove {gssen:in -> ensure.array[{partial.result}]}
execute if score *ensure.tags gssen_var matches 1.. run function gssen:impl/array/set/ensure/remove with storage gssen:out partial

execute if data storage gssen:in ensure.array[] run function gssen:impl/array/set/ensure/iter