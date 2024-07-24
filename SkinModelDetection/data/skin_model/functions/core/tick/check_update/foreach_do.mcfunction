#> skin_model:core/tick/check_update/foreach_do
#
# ブロックが更新されたか確認する
#
# @input
#   macro
#       name: string
#       dimension: string
#       x: int
#       y: int
#       z: int
#
# @within function skin_model:core/tick/check_update/foreach

# SkullOwner.Properties がfillされたか確認
    $execute in $(dimension) positioned $(x) $(y) $(z) run data modify storage skin_model:temp Properties set from block ~ ~ ~ SkullOwner.Properties

# SkullOwner.Properties がfillされた -> Propertiesを解析
    execute if data storage skin_model:temp Properties run function skin_model:core/tick/parse_properties/_
    $execute if data storage skin_model:temp Properties in $(dimension) positioned $(x) $(y) $(z) run setblock ~ ~ ~ minecraft:air
