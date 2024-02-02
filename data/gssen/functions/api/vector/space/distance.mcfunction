#> gssen:api > vector/space/distance
#--------------------
# -> a: double[3] (space vector)
# -> b: double[3] (space vector)
#--------------------
# <- result: double
#--------------------
#> gets the distance between <a> and <b>.
#--------------------
#- shorthand for negating <a>, adding it to <b>, then getting the magnitude.
#--------------------
# ...
#--------------------

$data modify storage gssen:in distance set value $(in)

#>---- D E B U G --------
data modify storage loggr:in log.in.message set from storage gssen:in distance
function loggr:api/log with storage loggr:in log
#>--------------

data modify storage gssen:in negate.in.vector set from storage gssen:in distance.a
function gssen:api/vector/space/negate with storage gssen:in negate

#>---- D E B U G --------
data modify storage loggr:in log.in.message set from storage gssen:out negate
function loggr:api/log with storage loggr:in log
#>--------------

data modify storage gssen:in add.in.a set from storage gssen:out negate.result
data modify storage gssen:in add.in.b set from storage gssen:in distance.b
function gssen:api/vector/space/add with storage gssen:in add

#>---- D E B U G --------
data modify storage loggr:in log.in.message set from storage gssen:out add
function loggr:api/log with storage loggr:in log
#>--------------

data modify storage gssen:in magnitude.in.vector set from storage gssen:out add.result
function gssen:api/vector/space/magnitude with storage gssen:in magnitude

#>---- D E B U G --------
data modify storage loggr:in log.in.message set from storage gssen:out magnitude
function loggr:api/log with storage loggr:in log
#>--------------

data modify storage gssen:out distance.result set from storage gssen:out magnitude.result

data remove storage gssen:in distance
data remove storage gssen:var distance