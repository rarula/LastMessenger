#> skin_model:util/core/decode_base64/foreach
# @private
# @within function skin_model:util/core/decode_base64/_

# Charsからひとつ取り出す
    data modify storage skin_model:temp Argument.element set from storage skin_model:temp Chars[0]
    data remove storage skin_model:temp Chars[0]

# bit列に変換
    function skin_model:util/core/decode_base64/foreach_do with storage skin_model:temp Argument
    data remove storage skin_model:temp Argument

# 残りがあったら再帰
    execute if data storage skin_model:temp Chars[0] run function skin_model:util/core/decode_base64/foreach
