#> skin_model:util/core/decode_base64/foreach_do
#
# @input
#   macro
#       element: string
#
# @within function skin_model:util/core/decode_base64/foreach

$data modify storage skin_model:temp BitArray append from storage skin_model:temp r.$(element)[]
