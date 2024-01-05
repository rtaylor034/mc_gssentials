#> gssen:impl/array/set/intersection/iter
#--------------------
# - gssen:api/array/set/intersection
#--------------------

$data modify storage gssen:var intersection.iter.a_item set from storage gssen:in intersection.a[$(i)]

# '1' if <a_item> is contained in <b>
execute store result score *intersection.match gssen_var run function gssen:impl/array/set/intersection/compare with storage gssen:var intersection.iter

execute if score *intersection.match gssen_var matches 1 run data modify storage gssen:out intersection.result append from storage gssen:var intersection.iter.a_item