#> gssen:api > decimal/negate
#--------------------
# -> number: decimal
#--------------------
# <- result: double
#--------------------
#> multiplies <number> by -1.
#--------------------
#- builtin precision.
#--------------------
# ...
#--------------------

$data modify storage gssen:in negate set value $(in)

execute positioned 0 0 0 align xyz summon marker run function gssen:impl/decimal/negate/do with storage gssen:in negate

data remove storage gssen:in negate