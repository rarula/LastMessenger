#> skin_model:util/core/decode_base64/split
# @private
# @within function skin_model:util/core/decode_base64/_

# 先頭文字を切り出して配列に追加する
data modify storage skin_model:temp Chars append string storage skin_model:util in.base64 0 1

# str を二文字以降にする
data modify storage skin_model:util in.base64 set string storage skin_model:util in.base64 1

# 要素が残ってたら再帰
execute unless data storage skin_model:util in{base64:""} run function skin_model:util/core/decode_base64/split
