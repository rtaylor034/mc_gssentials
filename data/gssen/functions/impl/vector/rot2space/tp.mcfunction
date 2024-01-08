#>gssen:internal/vector/rot2space/tp
#as function helper marker
#--------------------
# - gssen:api/vector/rot2space
#--------------------

data modify entity @s Rotation set from storage gssen:in rot2space.rotation

$execute at @s run tp @s ^ ^ ^$(magnitude)

execute at @s run data modify storage gssen:out rot2space.result set from entity @s Pos

kill @s