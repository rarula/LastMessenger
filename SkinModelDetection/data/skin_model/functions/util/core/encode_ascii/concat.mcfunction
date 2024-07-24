#> skin_model:util/core/encode_ascii/concat
#
# @input
#   macro
#       bit1: byte
#       bit2: byte
#       bit3: byte
#       bit4: byte
#       bit5: byte
#       bit6: byte
#       bit7: byte
#       bit8: byte
#
# @within function skin_model:util/core/encode_ascii/rec

$data modify storage skin_model:temp ByteStr set value "$(bit1)$(bit2)$(bit3)$(bit4)$(bit5)$(bit6)$(bit7)$(bit8)"
