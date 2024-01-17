#> gssen:impl/array/set/intersection/match
#--------------------
# ./iter
#--------------------

data modify storage gssen:out intersection.shared_a append from storage gssen:var intersection.iter.a_item
data modify storage gssen:out intersection.shared_b append from storage gssen:var intersection.iter.b_item
data modify storage gssen:out intersection.shared append from storage gssen:out partial.result