#> skin_model:util/core/encode_ascii/_
#
# @input
#   storage skin_model:util in
#       bitArray: byte[]
#       ignoreChars: string[]
#
# @output
#   storage skin_model:util out
#       ascii: string
#
# @within function skin_model:util/encode_ascii

# CharTableを作成
    function skin_model:util/core/encode_ascii/create_char_table

# bit配列をASCII文字の配列に変換
    data modify storage skin_model:temp Chars set value []
    function skin_model:util/core/encode_ascii/rec

# ASCII文字の配列を結合
    data modify storage concat: args set from storage skin_model:temp Chars
    function concat:concat_all
    data remove storage concat: args

# ASCII文字列を出力
    data modify storage skin_model:util out.ascii set from storage concat: result
    data remove storage concat: result

# CharTableを削除
    data remove storage skin_model:temp _

# リセット
    data remove storage skin_model:util in
    data remove storage skin_model:temp Chars
