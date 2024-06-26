#> gssen:api > vector/space/magnitude
#--------------------
# -> vector : double[3] (space vector)
#--------------------
# <- result : float
#--------------------
#> gets the magnitude of a <vector>.
#--------------------
#- in otherwords, gets the distance between <vector> and (0, 0, 0) 
#--------------------
# ...
#--------------------
#~ implementation from "Triton365" on the Mincecraft Command Discord

function gssen:_/impl/vector/space/magnitude/convert

#RESET
data remove storage gssen:in magnitude
data remove storage gssen:var magnitude