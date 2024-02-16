#> gssen:impl/object/partial/only
#--------------------
# - gssen:api/object/partial
#--------------------

data modify storage gssen:out partial.result set value {}

data modify storage gssen:in repeat.function set value "gssen:impl/object/partial/only_iter"
execute store result storage gssen:in repeat.n int 1 if data storage gssen:in partial.get.only[]
function gssen:api/inline/repeat