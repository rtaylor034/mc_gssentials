#>gssen:internal/vector/space2rot/tp
#as function helper marker
#--------------------
# - gssen:api/vector/space2rot
#--------------------

summon marker ~ ~ ~ {Tags:["_gssen-space2rot-anchor"]}
data modify entity @e[tag=_gssen-space2rot-anchor,limit=1] Pos set from storage gssen:in space2rot.space

#set position
#data modify entity @s Pos set from storage gssen:in space2rot.space

#rotation
execute anchored feet run tp @s ~ ~ ~ facing entity @e[tag=_gssen-space2rot-anchor,limit=1]
#execute at @s run tp @s ~ ~ ~ facing entity @s
#out set
data modify storage gssen:out space2rot.result set from entity @s Rotation

kill @s
kill @e[tag=_gssen-space2rot-anchor]
