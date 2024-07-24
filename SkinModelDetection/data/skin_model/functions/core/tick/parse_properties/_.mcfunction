#> skin_model:core/tick/parse_properties/_
#
# Propertiesを解析
#
# @input
#   storage skin_model:temp
#       Properties: (Block) SkullOwner.Properties
#
# @within function skin_model:core/tick/check_update/foreach_do

# Base64をデコード
    data modify storage skin_model:util in.base64 set from storage skin_model:temp Properties.textures[0].Value
    function skin_model:util/decode_base64

# ASCII文字列にエンコード
    data modify storage skin_model:util in.bitArray set from storage skin_model:util out.bitArray
    data modify storage skin_model:util in.ignoreChars set value [" "]
    function skin_model:util/encode_ascii

# ASCII文字列をJSON文字列として取得
    data modify storage skin_model:temp Argument.json set from storage skin_model:util out.ascii
    data remove storage skin_model:util out

# JSONをSNBTに変換
    function skin_model:core/tick/parse_properties/json_to_snbt with storage skin_model:temp Argument
    data remove storage skin_model:temp Argument

# コールバック引数を設定
    data modify storage skin_model: callback.name set from storage skin_model:temp JsonSnbt.profileName
    data modify storage skin_model: callback.model set value "wide"
    execute if data storage skin_model:temp JsonSnbt.textures.SKIN.metadata{model:"slim"} run data modify storage skin_model: callback.model set value "slim"

# コールバック
    function #skin_model:detected
    data remove storage skin_model: callback

# リセット
    data remove storage skin_model:temp JsonSnbt
