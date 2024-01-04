#> gssen:api > math/dec/add
#--------------------
# -> a : float | double
# -> b : float | double
#--------------------
# <- result : double
#--------------------
#> adds <a> and <b> with full double precision
#--------------------
# ...
#--------------------

$data modify storage gssen:in add set value $(in)

execute positioned 0 0 0 align xyz summon marker run function gssen:impl/math/dec/add/do with storage gssen:in add
#resets
data remove storage gssen:in add