#>gssen:impl/inline/repeat/command
#--------------------
# - gssen:impl/inline/repeat/init
#--------------------

$execute store result storage $(with).$(iter_var) int 1 run scoreboard players get $(iter_declare)
$execute store result score *repeat.returned gssen_var run function $(function) with storage $(with)

$scoreboard players add $(iter_declare) 1
$execute unless score *repeat.returned gssen_var matches 0 unless score $(iter_declare) matches $(n).. run function gssen:impl/inline/repeat/command {function:"$(function)", n:$(n), iter_declare:"$(iter_declare)", with:"$(with)", iter_var:"$(iter_var)"}