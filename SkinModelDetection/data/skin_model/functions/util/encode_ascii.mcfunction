#> skin_model:util/encode_ascii
#
# Bit配列をエンコードし、そのASCII文字を配列で返します
#
# @input
#   storage skin_model:util in
#       bitArray: byte[]
#           bit配列
#       ignoreChars: string[]
#           出力しないASCII文字
#
# @output
#   storage skin_model:util out
#       ascii: string
#           ASCII文字列
#
# @within function skin_model:core/tick/parse_properties/_

function skin_model:util/core/encode_ascii/_
