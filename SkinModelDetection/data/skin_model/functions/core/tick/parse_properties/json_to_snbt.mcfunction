#> skin_model:core/tick/parse_properties/json_to_snbt
#
# @input
#   macro
#       json: string
#
# @within function skin_model:core/tick/parse_properties/_

$data modify storage skin_model:temp JsonSnbt set value $(json)
