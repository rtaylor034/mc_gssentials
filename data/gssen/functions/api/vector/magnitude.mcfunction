#> gssen : api/vector > magnitude
#--------------------
# -> space : double[3] (space vector)
#--------------------
# <- result : float
#--------------------
#> gets the magnitude of a <space> vector
#--------------------
#- in otherwords, gets the distance between <space> and (0, 0, 0) 
#--------------------
#~ implementation from "Triton365" on the Mincecraft Command Discord

$data modify storage gssen:in magnitude set value $(in)

function gssen:impl/vector/magnitude/convert with storage gssen:in magnitude

#RESET
data remove storage gssen:in magnitude
data remove storage gssen:var magnitude