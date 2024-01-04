#> gssen:api > inline/repeat
#--------------------
# -> function: string (function name)
# -> n: int
# -> iter_declare: string (scoreboard identifier)
# => with: string (storage identifier) = "null"
# => iter_var: string = "i"
#--------------------
# ...
#--------------------
#> calls <function> <n> times with specified macro values <with>, setting '<with>.<iter_var>' to the current iteration.
#> if <function> returns 0 at a given repitition, the loop will stop early.
#--------------------
#- can be used to iterate through an array.
#- due to minecraft's non-existent scoping rules, <iter_declare> must indicate a free scoreboard player/objective that can be used to store the iteration variable.
#  - example: "dothing.i gssen_var"
#- example <with>: "gssen:var mypath"
#--------------------
# 0.. - number of successful repititions. equal to <n> if all calls to <function> resulted in non-zero values.
#--------------------

$data modify storage gssen:in repeat set value $(in)
execute unless data storage gssen:in repeat.iter_var run data modify storage gssen:in repeat.iter_var set value "i"
execute unless data storage gssen:in repeat.with run data modify storage gssen:in repeat.with set value "null"

execute store result score *repeat gssen_return run data get storage gssen:in repeat.n
execute if score *repeat gssen_return matches 1.. run function gssen:impl/inline/repeat/init with storage gssen:in repeat

#RESET
scoreboard players reset *repeat.returned gssen_var

return run scoreboard players get *repeat gssen_return