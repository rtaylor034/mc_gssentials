#> gssen:_/impl/object/partial/none
#--------------------
# - gssen:api/object/partial
#--------------------

data modify storage gssen:out partial.result set from storage gssen:in partial.object
data remove storage gssen:in partial

return 0