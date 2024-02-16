#> gssen:impl/array/set/difference/iter
#--------------------
# - gssen:api/array/set/difference
#--------------------

$data modify storage gssen:var difference.iter.a_item set from storage gssen:in difference.a[$(i)]

data modify storage gssen:in partial.object set from storage gssen:var difference.iter.a_item
data modify storage gssen:in partial.get set from storage gssen:in difference.compare
function gssen:api/object/partial

execute store result score *difference.tags gssen_var run data get storage gssen:out partial.result
execute if score *difference.tags gssen_var matches 0 run return 1

# '1' if <a_item> is contained in <b>
execute store result score *difference.match gssen_var run function gssen:impl/array/set/difference/compare with storage gssen:out partial

execute if score *difference.match gssen_var matches 0 run data modify storage gssen:out difference.unique_a append from storage gssen:var difference.iter.a_item