#> gssen:api > myapifunction
#--------------------
# AS: the_executor
# AT: a_position
# -> input: float
# -> other_input: string
# -> object_input: {a: string, b: int, c: bool}
# -> type_input: MyType
## - 'MyType' must be defined in 'readme.txt'
# => defaulted_input: string = "default"
#--------------------
# <- output: string
# <- other_output: int
#--------------------
#> direct description of the function.
#> can refer to <input> like this (aswell as <the_executor>, and any other inputs) and >output< like this.
#> leave any information about nuances or edge cases for the section below.
#--------------------
#- any footnotes, examples, or otherwise specific helpful information goes here.
#--------------------
# 1.. - condition that this function returns 1 or more.
# 0 - condition that this function returns 0.
# -4..-1 - condition this function returns -4 to -1.
## positive values SHOULD reflect some sort of success.
## 0 or negative values MUST reflect some sort of failure.
## a function is RECOMMENDED to to express failure as non-zero negative return values OR exclusively returning 0.
#--------------------
## END OF HEADER

# sections that do not apply to the function (such as the function having no inputs, no defined return values, etc.) MUST be indicated blank as follows:
#--------------------
# ...
#--------------------
# any section can be blank, but section 3 (description) is HIGHLY RECOMMENDED to be filled.
# even if a section is blank, it MUST be included in the function header.

# input data SHOULD be stored under '<namespace>:in <function>' (unless function has no inputs)
$data modify storage gssen:in myapifunction set value $(in)

# ALL temporary data used by this function MUST be in form '<namespace>:var <function>.<data>'
# (or '<namespace>:in' for inputs)
data remove storage gssen:var myapifunction

# ALL temporary scores used by this function MUST be in form '*<function>.<variable> <namespace>_var'
scoreboard players reset *myapifunction.my_score gssen_var
data remove storage gssen:in myapifunction

# functions MUST clear their 'in' and 'var' data, aswell as their variable scores before returning.
# '*<function> <namespace>_return' MAY be used to conveniently store the return value. (but MUST NOT be assumed too outside of the function)
# <namespace>_return is a dirty objective (does not need to be cleared)
return run scoreboard players get *myapifunction gssen_return