#> gssen:api > text/parse
#--------------------
# -> text : dynamic jsonText
#--------------------
# <- result : static jsonText
#--------------------
#> parses/evaluates dynamic json <text> to static json text.
#--------------------
#- example: '{"score":{"name":"*im_42","objective":"gssen_var"}}'' would become: '{"text":"42"}'
#- single quotes may be required in in <text>.
#- <text> should not include context-dependent selectors (ex: @s, @a[distance=..1], etc.)
#--------------------

$data modify storage gssen:in parse set value $(in)
function gssen:impl/text/parse/pos with storage gssen:settings free_block

#RESET
data remove storage gssen:in parse