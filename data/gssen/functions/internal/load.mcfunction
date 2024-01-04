#>gssen:internal/load
#--------------------
# @LOAD
#--------------------

#settings
function gssen:settings

#declare storage gssen:var
#declare storage gssen:in
#declare storage gssen:out
#scoreboards
scoreboard objectives add gssen_var dummy
scoreboard objectives add gssen_const dummy

#dirty (scores that may not be cleared)
scoreboard objectives add gssen_dirty dummy
scoreboard objectives add gssen_return dummy

scoreboard players set *max gssen_const 2147483647
scoreboard players set *min gssen_const -2147483648
scoreboard players set *1 gssen_const 1
scoreboard players set *0 gssen_const 0
scoreboard players set *-1 gssen_const -1