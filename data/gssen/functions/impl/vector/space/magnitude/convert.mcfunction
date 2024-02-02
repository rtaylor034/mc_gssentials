#>gssen:impl/vector/magnitude/convert
#--------------------
# - gssen:api/vector/magnitude
#--------------------

#execute store result storage gssen:var magnitude.vec.x float 1.0 run data get storage gssen:in magnitude.space[0]
#execute store result storage gssen:var magnitude.vec.y float 1.0 run data get storage gssen:in magnitude.space[1]
#execute store result storage gssen:var magnitude.vec.z float 1.0 run data get storage gssen:in magnitude.space[2]

data modify storage gssen:var magnitude.vec.x set from storage gssen:in magnitude.vector[0]
data modify storage gssen:var magnitude.vec.y set from storage gssen:in magnitude.vector[1]
data modify storage gssen:var magnitude.vec.z set from storage gssen:in magnitude.vector[2]

execute summon item_display run function gssen:impl/vector/space/magnitude/transform with storage gssen:var magnitude.vec