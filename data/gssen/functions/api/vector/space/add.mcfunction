#> gssen:api > vector/add
#--------------------
# -> a: double[3]
# -> b: double[3]
#--------------------
# <- result: double[3]
#--------------------
#> adds vectors <a> and <b> with builtin precision.
#--------------------
#- implemented using positioned coordinate macros.
#--------------------
# ...
#--------------------

data modify storage gssen:var add.ax set from storage gssen:in add.a[0]
data modify storage gssen:var add.ay set from storage gssen:in add.a[1]
data modify storage gssen:var add.az set from storage gssen:in add.a[2]

data modify storage gssen:var add.bx set from storage gssen:in add.b[0]
data modify storage gssen:var add.by set from storage gssen:in add.b[1]
data modify storage gssen:var add.bz set from storage gssen:in add.b[2]

function gssen:impl/vector/space/add/do with storage gssen:var add

data remove storage gssen:var add
data remove storage gssen:in add