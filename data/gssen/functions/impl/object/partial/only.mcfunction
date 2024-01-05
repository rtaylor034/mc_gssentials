#> gssen:impl/object/partial/only
#--------------------
# - gssen:api/object/partial
#--------------------

data modify storage gssen:out partial.result set value {}
data modify storage gssen:in repeat.in.function set value "gssen:impl/object/partial/only_iter"
#data modify storage gssen:in repeat.in.with set value "my:storage path"
execute store result storage gssen:in repeat.in.n int 1 if data storage gssen:in partial.get.only[]
function gssen:api/inline/repeat with storage gssen:in repeat