#>gssen:impl/text/parse/signparse
#--------------------
# - gssen:impl/text/parse/pos
#--------------------

#sign
setblock ~ ~ ~ minecraft:oak_sign

#text
data modify block ~ ~ ~ front_text.messages[0] set from storage gssen:in parse.text
data modify storage gssen:out parse.result set from block ~ ~ ~ front_text.messages[0]

#bedrock
setblock ~ ~ ~ bedrock
