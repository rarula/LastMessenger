#> skin_model:util/core/encode_ascii/is_contained_ignore_chars
#
# @input
#   macro
#       char: string
#
# @within function skin_model:util/core/encode_ascii/rec

$execute store success storage skin_model:temp isContained byte 1.0 if data storage skin_model:util in{ignoreChars:["$(char)"]}
