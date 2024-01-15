#> gssen:impl/array/set/ensure/iter
#--------------------
# @api
#--------------------

data modify storage gssen:var ensure.partial.in.object set from storage gssen:in ensure.array[0]
function gssen:api/object/partial with storage gssen:var ensure.partial

data modify storage gssen:out ensure.result append from storage gssen:in ensure.array[0]
data modify storage gssen:out ensure.compared append from storage gssen:out partial.result

#remove {gssen:in -> ensure.array[{partial.result}]}
function gssen:impl/array/set/ensure/remove with storage gssen:out partial