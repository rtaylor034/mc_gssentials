#>gssen:impl/inline/repeat/with
#--------------------
# - gssen:impl/inline/repeat/init
#--------------------

$data modify storage gssen:var repeat.with.$(scope) set from storage $(with)
$execute store result storage gssen:var repeat.with.$(scope).$(iter_var) int 1 run scoreboard players get *repeat.iter.$(scope) gssen_var
$execute store result score *repeat.returned gssen_var run function $(function) with storage gssen:var repeat.with.$(scope)