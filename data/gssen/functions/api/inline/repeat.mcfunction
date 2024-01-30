#> gssen:api > inline/repeat
#--------------------
# -> function: string (function name)
# -> n: int
# ~> with: string (storage identifier)
# => iter_var: string = "i"
#--------------------
# ...
#--------------------
#> calls <function> <n> times with specified macro values <with>, setting '<with>.<iter_var>' to the current iteration (starting at 0).
#> if <function> returns 0 at a given repitition, the loop will stop early.
#--------------------
#- can be used to iterate through an array.
#- introduces a notable amount of O(1) macro overhead, but its convenient.
#- example <with>: "gssen:var mypath".
#- <with> is not cached; you can update and read it every subsequent loop.
#- <iter_var> goes through the range 0..(<n>-1)
#--------------------
# 0.. - number of successful repititions. equal to <n> if all calls to <function> resulted in non-zero values.
#--------------------

$data modify storage gssen:in repeat set value $(in)
execute unless data storage gssen:in repeat.iter_var run data modify storage gssen:in repeat.iter_var set value "i"
execute unless data storage gssen:in repeat.with run data modify storage gssen:in repeat.with set value {null:1}

scoreboard players add *repeat.nest_level gssen_var 1
execute store result storage gssen:in repeat.scope int 1 run scoreboard players get *repeat.nest_level gssen_var

execute store result score *repeat gssen_return run data get storage gssen:in repeat.n
execute if score *repeat gssen_return matches 1.. run function gssen:impl/inline/repeat/init with storage gssen:in repeat

scoreboard players remove *repeat.nest_level gssen_var 1
data remove storage gssen:var repeat.scopes[-1]
#RESET
execute if score *repeat.nest_level gssen_var matches ..0 run function gssen:impl/inline/repeat/reset

return run scoreboard players get *repeat gssen_return