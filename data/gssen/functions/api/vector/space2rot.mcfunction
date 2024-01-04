#> gssen:api > vector/space2rot
#--------------------
# -> space : double[3] (space vector)
#--------------------
# <- result : float[2] (rotation vector)
#--------------------
#> gets the rotation vector that faces in the direction of a <space> vector
#--------------------
#- >result[0]< = -arctan(<space[0]> / <space[2]>)
#- >result[1]< = -arctan(<space[1]> / sqrt(<space[0]>^2 + <space[2]>^2)]
#- inverse of rot2space
#--------------------

data modify storage gssen:out space2rot.result set value [0.0f,0.0f]

$data modify storage gssen:in space2rot set value $(in)

execute positioned 0 0 0 align xyz summon marker run function gssen:impl/vector/space2rot/tp

#END
data remove storage gssen:in space2rot
