#> gssen:impl/object/partial/without
#--------------------
# - gssen:api/object/partial
#--------------------

data modify storage gssen:out partial.result set from storage gssen:in partial.object

data modify storage gssen:in repeat.function set value "gssen:impl/object/partial/without_iter"
execute store result storage gssen:in repeat.n int 1 if data storage gssen:in partial.get.without[]
function gssen:api/inline/repeat