#> gssen:api > object/partial
#--------------------
# -> object: obj
# => get: {only: string[]} | {without: string[]} | {} = {}
#--------------------
# <- result: obj[]
#--------------------
#> if <get.only>: gets <object> with ONLY the fields specified in <get.only>
#> if <get.without>: gets <object> WITHOUT the fields specified in <get.without>
#--------------------
#- if neither <get.without> nor <get.only> are specified, just returns <object>
#--------------------
# 1 - <get.only> or <get.without> was specified
# 0 - <get.only> or <get.without> was not specified
#--------------------

execute unless data storage gssen:in partial.get.without unless data storage gssen:in partial.get.only run return run function gssen:impl/object/partial/none

execute if data storage gssen:in partial.get.only run function gssen:impl/object/partial/only
execute if data storage gssen:in partial.get.without run function gssen:impl/object/partial/without

data remove storage gssen:in partial
data remove storage gssen:var partial