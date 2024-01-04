#>gssen:impl/inline/repeat/command
#--------------------
# - gssen:impl/inline/repeat/init
#--------------------

$data modify storage gssen:var repeat.this_scope set from storage gssen:var repeat.scope.$(scope)
execute if data storage gssen:var repeat.this_scope.with.null run function gssen:impl/inline/repeat/no_with with storage gssen:var repeat.this_scope
execute unless data storage gssen:var repeat.this_scope.with.null run function gssen:impl/inline/repeat/with with storage gssen:var repeat.this_scope

$scoreboard players add *repeat.iter.$(scope) gssen_var 1
$execute unless score *repeat.returned gssen_var matches 0 unless score *repeat.iter.$(scope) gssen_var matches $(n).. run function gssen:impl/inline/repeat/command with storage gssen:var repeat.scope.$(scope)