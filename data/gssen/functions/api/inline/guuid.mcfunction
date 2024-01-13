#> gssen:api > inline/guuid
#--------------------
# -> UUID: uuid
#--------------------
# <- result: guuid
#--------------------
#> converts <UUID> to a guuid (UUID able to be directly used as a selector).
#--------------------
# ...
#--------------------
# ...
#--------------------
# Yoinked from https://github.com/gibbsly/gu (modified for GStandards)
#--------------------

data merge storage gssen:var {guuid:{0:0,1:0,2:0,3:0,4:0,5:0,6:0,7:0,8:0,9:0,a:0,b:0,c:0,d:0,e:0,f:0}}
$data modify storage gssen:in guuid set value $(in)

execute store result score *guuid.0 gssen_var store result score *guuid.1 gssen_var run data get storage gssen:in guuid.UUID[0]
execute store result storage gssen:var guuid.0 int 1 run scoreboard players operation *guuid.0 gssen_var %= *256 gssen_const
execute store result score *guuid.2 gssen_var run scoreboard players operation *guuid.1 gssen_var /= *256 gssen_const
execute store result storage gssen:var guuid.1 int 1 run scoreboard players operation *guuid.1 gssen_var %= *256 gssen_const
execute store result score *guuid.3 gssen_var run scoreboard players operation *guuid.2 gssen_var /= *256 gssen_const
execute store result storage gssen:var guuid.2 int 1 run scoreboard players operation *guuid.2 gssen_var %= *256 gssen_const
execute store result storage gssen:var guuid.3 int 1 run scoreboard players operation *guuid.3 gssen_var /= *256 gssen_const

execute store result score *guuid.0 gssen_var store result score *guuid.1 gssen_var run data get storage gssen:in guuid.UUID[1]
execute store result storage gssen:var guuid.4 int 1 run scoreboard players operation *guuid.0 gssen_var %= *256 gssen_const
execute store result score *guuid.2 gssen_var run scoreboard players operation *guuid.1 gssen_var /= *256 gssen_const
execute store result storage gssen:var guuid.5 int 1 run scoreboard players operation *guuid.1 gssen_var %= *256 gssen_const
execute store result score *guuid.3 gssen_var run scoreboard players operation *guuid.2 gssen_var /= *256 gssen_const
execute store result storage gssen:var guuid.6 int 1 run scoreboard players operation *guuid.2 gssen_var %= *256 gssen_const
execute store result storage gssen:var guuid.7 int 1 run scoreboard players operation *guuid.3 gssen_var /= *256 gssen_const

execute store result score *guuid.0 gssen_var store result score *guuid.1 gssen_var run data get storage gssen:in guuid.UUID[2]
execute store result storage gssen:var guuid.8 int 1 run scoreboard players operation *guuid.0 gssen_var %= *256 gssen_const
execute store result score *guuid.2 gssen_var run scoreboard players operation *guuid.1 gssen_var /= *256 gssen_const
execute store result storage gssen:var guuid.9 int 1 run scoreboard players operation *guuid.1 gssen_var %= *256 gssen_const
execute store result score *guuid.3 gssen_var run scoreboard players operation *guuid.2 gssen_var /= *256 gssen_const
execute store result storage gssen:var guuid.a int 1 run scoreboard players operation *guuid.2 gssen_var %= *256 gssen_const
execute store result storage gssen:var guuid.b int 1 run scoreboard players operation *guuid.3 gssen_var /= *256 gssen_const

execute store result score *guuid.0 gssen_var store result score *guuid.1 gssen_var run data get storage gssen:in guuid.UUID[3]
execute store result storage gssen:var guuid.c int 1 run scoreboard players operation *guuid.0 gssen_var %= *256 gssen_const
execute store result score *guuid.2 gssen_var run scoreboard players operation *guuid.1 gssen_var /= *256 gssen_const
execute store result storage gssen:var guuid.d int 1 run scoreboard players operation *guuid.1 gssen_var %= *256 gssen_const
execute store result score *guuid.3 gssen_var run scoreboard players operation *guuid.2 gssen_var /= *256 gssen_const
execute store result storage gssen:var guuid.e int 1 run scoreboard players operation *guuid.2 gssen_var %= *256 gssen_const
execute store result storage gssen:var guuid.f int 1 run scoreboard players operation *guuid.3 gssen_var /= *256 gssen_const

function gssen:impl/inline/guuid/get_hexes with storage gssen:var guuid
function gssen:impl/inline/guuid/concat_uuid with storage gssen:var guuid

scoreboard players reset *guuid.0 gssen_var
scoreboard players reset *guuid.1 gssen_var
scoreboard players reset *guuid.2 gssen_var
scoreboard players reset *guuid.3 gssen_var
data remove storage gssen:var guuid
data remove storage gssen:in guuid