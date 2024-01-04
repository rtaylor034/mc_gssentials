#> gssen:impl/array/difference/iter
#--------------------
# - gssen:api/array/difference
#--------------------

$data modify storage gssen:var difference.iter.a_item set from storage gssen:in difference.a[$(i)]

# '1' if <a_item> is contained in <b>
execute store result score *difference.match gssen_var run function gssen:impl/array/set/difference/compare with storage gssen:var difference.iter

execute if score *difference.match gssen_var matches 0 run data modify storage gssen:out difference.unique_a append from storage gssen:var difference.iter.a_item