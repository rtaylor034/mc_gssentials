#>gssen:impl/inline/repeat/init
#--------------------
# - gssen:api/inline/repeat
#--------------------

$data modify storage gssen:var repeat.scope.$(scope) set from storage gssen:in repeat
data remove storage gssen:in repeat

$scoreboard players set *repeat.iter.$(scope) gssen_var 0
$function gssen:impl/inline/repeat/command with storage gssen:var repeat.scope.$(scope)

$scoreboard players operation *repeat gssen_return = *repeat.iter.$(scope) gssen_var
scoreboard players operation *repeat gssen_return -= *1 gssen_const

$scoreboard players reset *repeat.iter.$(scope) gssen_var