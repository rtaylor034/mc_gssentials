#> gssen:api > vector/space/to_rotation
#--------------------
# -> vector : double[3] (space vector)
#--------------------
# <- result : float[2] (rotation vector)
#--------------------
#> gets the rotation vector that faces in the direction of a space <vector>.
#--------------------
#- >result[0]< = -arctan(<vector[0]> / <vector[2]>)
#- >result[1]< = -arctan(<vector[1]> / sqrt(<vector[0]>^2 + <vector[2]>^2)]
#- inverse of gssen:api/vector/rotation/to_space
#--------------------

$data modify storage gssen:in to_rotation set value $(in)

data modify storage gssen:var to_rotation.x set from storage gssen:in to_rotation.vector[0]
data modify storage gssen:var to_rotation.y set from storage gssen:in to_rotation.vector[1]
data modify storage gssen:var to_rotation.z set from storage gssen:in to_rotation.vector[2]

execute positioned 0 0 0 align xyz summon marker run function gssen:impl/vector/space/to_rotation/do with storage gssen:var to_rotation