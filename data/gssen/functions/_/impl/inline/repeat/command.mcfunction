#>gssen:_/impl/inline/repeat/command
#--------------------
# - gssen:_/impl/inline/repeat/init
#--------------------

execute if data storage gssen:var repeat.scopes[-1].with.null run function gssen:_/impl/inline/repeat/no_with with storage gssen:var repeat.scopes[-1]
execute unless data storage gssen:var repeat.scopes[-1].with.null run function gssen:_/impl/inline/repeat/with with storage gssen:var repeat.scopes[-1]

$scoreboard players add *repeat.iter.$(scope) gssen_var 1
$execute unless score *repeat.returned gssen_var matches 0 unless score *repeat.iter.$(scope) gssen_var matches $(n).. run function gssen:_/impl/inline/repeat/command with storage gssen:var repeat.scopes[-1]