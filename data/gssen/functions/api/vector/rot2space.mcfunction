#> gssen:api > vector/rot2space
#--------------------
# -> rotation : float[2] (rotation vector)
# => magnitude : double = 1
#--------------------
# <- result : double[3] (space vector)
#--------------------
#> generates a space vector with magnitude <magnitude> in the direction of <rotation>
#--------------------
#- >result< = [-sin(<rotation[0]>), -sin(<rotation[1]), cos(<rotation[0]>)] * <magnitude>
#- inverse of space2rot
#--------------------

$data modify storage gssen:in rot2space set value $(in)

#init
data modify storage gssen:out rot2space.result set value [0.0d,0.0d,0.0d]
execute unless data storage gssen:in rot2space.magnitude run data modify storage gssen:in rot2space.magnitude set value 1

execute positioned 0 0 0 align xyz summon marker run function gssen:impl/vector/rot2space/tp with storage gssen:in rot2space

#RESET
data remove storage gssen:in rot2space