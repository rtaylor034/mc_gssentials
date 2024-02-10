#>gssen:settings

#declare storage gssen:settings
data modify storage gssen:settings PERSIST set value false

#>-------------------
# > free_block : {x: int, y: int, z: int}
#-------------------
#~ a safe block location to do any sub-tick operations that require a block (ex: sign text evaluating).
#-------------------
#- this block must be replaced with bedrock after every subtick operation.
#- location must be forceloaded.
#-------------------
data modify storage gssen:settings free_block set value {x:0, y:-63, z:0}
forceload add -1 -1 0 0
#>-------------------
