#>gssen:_/impl/inline/repeat/no_with
#--------------------
# - gssen:_/impl/inline/repeat/init
#--------------------

$execute store result storage gssen:var repeat.no_with.$(iter_var) int 1 run scoreboard players get *repeat.iter.$(scope) gssen_var
$execute store result score *repeat.returned gssen_var run function $(function) with storage gssen:var repeat.no_with