#> skin_model:util/core/encode_ascii/rec
# @private
# @within function skin_model:util/core/encode_ascii/_

# bit配列の先頭8bitを結合した文字列を作成
    data modify storage skin_model:temp Argument.bit1 set from storage skin_model:util in.bitArray[0]
    data modify storage skin_model:temp Argument.bit2 set from storage skin_model:util in.bitArray[1]
    data modify storage skin_model:temp Argument.bit3 set from storage skin_model:util in.bitArray[2]
    data modify storage skin_model:temp Argument.bit4 set from storage skin_model:util in.bitArray[3]
    data modify storage skin_model:temp Argument.bit5 set from storage skin_model:util in.bitArray[4]
    data modify storage skin_model:temp Argument.bit6 set from storage skin_model:util in.bitArray[5]
    data modify storage skin_model:temp Argument.bit7 set from storage skin_model:util in.bitArray[6]
    data modify storage skin_model:temp Argument.bit8 set from storage skin_model:util in.bitArray[7]
    function skin_model:util/core/encode_ascii/concat with storage skin_model:temp Argument
    data remove storage skin_model:temp Argument

# 結合した文字列からASCII文字に変換
    data modify storage skin_model:temp Argument.byteStr set from storage skin_model:temp ByteStr
    data remove storage skin_model:temp ByteStr
    function skin_model:util/core/encode_ascii/convert with storage skin_model:temp Argument
    data remove storage skin_model:temp Argument

# 変換したASCII文字がignoreCharsに含まれているかを確認
    data modify storage skin_model:temp Argument.char set from storage skin_model:temp Char
    execute if data storage skin_model:temp Argument{char:"\\"} run data modify storage skin_model:temp Argument.char set value "\\\\"
    execute if data storage skin_model:temp Argument{char:"\""} run data modify storage skin_model:temp Argument.char set value "\\\""
    function skin_model:util/core/encode_ascii/is_contained_ignore_chars with storage skin_model:temp Argument
    data remove storage skin_model:temp Argument

# ASCII文字がignoreCharsに含まれていない -> Charsに追加
    execute if data storage skin_model:temp {isContained:false} run data modify storage skin_model:temp Chars append from storage skin_model:temp Char
    data remove storage skin_model:temp Char
    data remove storage skin_model:temp isContained

# bit配列の先頭8要素を削除
    data remove storage skin_model:util in.bitArray[7]
    data remove storage skin_model:util in.bitArray[6]
    data remove storage skin_model:util in.bitArray[5]
    data remove storage skin_model:util in.bitArray[4]
    data remove storage skin_model:util in.bitArray[3]
    data remove storage skin_model:util in.bitArray[2]
    data remove storage skin_model:util in.bitArray[1]
    data remove storage skin_model:util in.bitArray[0]

# まだ8bit以上ある -> 再帰
    execute if data storage skin_model:util in.bitArray[7] run function skin_model:util/core/encode_ascii/rec
