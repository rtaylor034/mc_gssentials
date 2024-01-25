#>gssen:settings

#declare storage gssen:settings
#settings stored in gssen:settings <path>

#> DEV - MAKE THIS DEFAULT TO DEPEND PLAYERS LOCATION FOR GARUNTEED SPAWN CHUNK
#>-------------------
# > free_block : {x: int, y: int, z: int}
# default: {x:0, y:-63, z:0}
#-------------------
#~ a safe block location to do any sub-tick operations that require a block (ex: sign parsing).
#-------------------
#- this block is indefinitely replaced with bedrock.
#- location must be forceloaded.
#-------------------
data modify storage gssen:settings free_block set value {x:0, y:-63, z:0}
forceload add -1 -1 0 0
#>-------------------
