#> gssen:api > text/evaluate
#--------------------
# -> text : dynamicText
#--------------------
# <- result : staticText
#--------------------
#> evaluates dynamic json <text> to static json text (no dynamic elemets).
#--------------------
#-IMPORTANT: execution context is not kept during in evaluation.
#  - i.e. dynamic elements of <text> must be assumed to be ran as SERVER at an arbitrary location.
#- example: '{"score":{"name":"*im_42","objective":"gssen_var"}}'' would become: '{"text":"42"}'
#- single quotes may be required in in <text>.
#--------------------

$data modify storage gssen:in evaluate set value $(in)

data modify storage gssen:var evaluate.text set from storage gssen:in evaluate.text
data modify storage gssen:var evaluate merge from storage gssen:settings free_block

function gssen:impl/text/evaluate/do with storage gssen:var evaluate

#RESET
data remove storage gssen:in parse