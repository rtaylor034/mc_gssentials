#>gssen:impl/inline/repeat/init
#--------------------
# - gssen:api/inline/repeat
#--------------------

#data remove storage gssen:in repeat
data remove storage gssen:var repeat

$scoreboard players set $(iter_declare) 0
#chuegy but to its to ensure no contamination in nested loops
$function gssen:impl/inline/repeat/command {function:"$(function)", n:$(n), iter_declare:"$(iter_declare)", with:"$(with)", iter_var:"$(iter_var)"}

$scoreboard players operation *repeat gssen_return = $(iter_declare)
scoreboard players operation *repeat gssen_return -= *1 gssen_const

$scoreboard players reset $(iter_declare)