#> gssen:impl/object/partial/without
#--------------------
# - gssen:api/object/partial
#--------------------

data modify storage gssen:out partial.result set from storage gssen:in partial.object
data modify storage gssen:in repeat.in.function set value "gssen:impl/object/partial/without_iter"
#data modify storage gssen:in repeat.in.with set value "my:storage path"
execute store result storage gssen:in repeat.in.n int 1 if data storage gssen:in partial.get.without[]
function gssen:api/inline/repeat with storage gssen:in repeat