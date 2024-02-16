#> gssen:api > array/set/ensure
#--------------------
# -> array: obj[]
# => compare: {only: string[]} | {without: string[]} | {} = {}
#--------------------
# <- result: obj[]
# <- compared: obj[]
#--------------------
#> removes duplicates from <array>, making it a set.
#> for any duplicate elements found, the lowest-index element is used in >result<.
#--------------------
#- if <compare>: only the tags specified are taken into account.
#  - both >result< and >compared< are <array> as a set, but >compared<'s elements only contain the nbt tags specified by <compare>.
#- if <compare> is unspecified, >result< and >compared< are identical.
#- an element must match ALL tags of another element to be considered a duplicate.
#--------------------
# ...
#--------------------

data modify storage gssen:out ensure.result set value []
data modify storage gssen:out ensure.compared set value []

data modify storage gssen:var ensure.partial.in.get set from storage gssen:in ensure.compare

execute if data storage amenu:in ensure.array[] run function gssen:impl/array/set/ensure/iter
data remove storage gssen:in ensure
data remove storage gssen:var ensure
scoreboard players reset *ensure.tags gssen_var