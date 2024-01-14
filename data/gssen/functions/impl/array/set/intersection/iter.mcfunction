#> gssen:impl/array/set/intersection/iter
#--------------------
# - gssen:api/array/set/intersection
#--------------------

$data modify storage gssen:var intersection.iter.a_item set from storage gssen:in intersection.a[$(i)]

data modify storage gssen:in partial.in.object set from storage gssen:var intersection.iter.a_item
data modify storage gssen:in partial.in.get set from storage gssen:in compare
function gssen:api/object/partial with storage gssen:in partial

# '1' if <a_item> is contained in <b>
execute store result score *intersection.match gssen_var run function gssen:impl/array/set/intersection/compare with storage gssen:out partial

execute if score *intersection.match gssen_var matches 1 run data modify storage gssen:out intersection.shared_a append from storage gssen:var intersection.iter.a_item
execute if score *intersection.match gssen_var matches 1 run data modify storage gssen:out intersection.shared_b append from storage gssen:out intersection.iter.b_item