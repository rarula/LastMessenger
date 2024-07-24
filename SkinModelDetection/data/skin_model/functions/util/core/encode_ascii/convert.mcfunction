#> skin_model:util/core/encode_ascii/convert
#
# @input
#   macro
#       byteStr: string
#
# @within function skin_model:util/core/encode_ascii/rec

$data modify storage skin_model:temp Char set from storage skin_model:temp _.$(byteStr)
