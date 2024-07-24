#> skin_model:util/core/decode_base64/_
#
# @input
#   storage skin_model:util in
#       base64: string
#
# @output
#   storage skin_model:util out
#       bitArray: byte[]
#
# @within function skin_model:util/decode_base64

# Base64文字列を1文字ずつ分解
    data modify storage skin_model:temp Chars set value []
    function skin_model:util/core/decode_base64/split

# CharTableを作成
    function skin_model:util/core/decode_base64/create_char_table

# 分割した各文字をbit列に変換
    data modify storage skin_model:temp BitArray set value []
    function skin_model:util/core/decode_base64/foreach

# bit配列を出力
    data modify storage skin_model:util out.bitArray set from storage skin_model:temp BitArray

# CharTableを削除
    data remove storage skin_model:temp r

# リセット
    data remove storage skin_model:util in
    data remove storage skin_model:temp Chars
    data remove storage skin_model:temp BitArray
