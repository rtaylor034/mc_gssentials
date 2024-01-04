#> gssen : api > myapifunction
#--------------------
# [E] _myentitytarget | type=zombie, limit=1
# -> myparameter : int
# -> myarrayparameter : jsonString[]
# -> myobjectparameter : {a: int, b: string, c: float}
# note about above parameter
# -> *myscoreparameter*
# => mydefaultedparameter : float = 1.0
#--------------------
# [E] _myoutputtag
# <- myoutput : string[]
# <- *myotheroutput*
#--------------------
#> This is a description of this function.
#> I refer to <myparameter> like this and >myoutput< like that.
#--------------------
#- These are remarks, footnotes, or references relevant to this function.
#- These are more footnotes.
#--------------------
# 0 - indicates why this function would return 0
# 1.. - indicates why it would return anything 1 or more
#--------------------

#EXAMPLE:
# function gssen:api/myapifunction {in:{myparameter:1, myobjectparameter:{a:1, b:"two", c:3.0f}...}}
#function gssen:api/myapifunction
#&function body&
