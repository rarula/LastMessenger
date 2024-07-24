#> skin_model:core/tick/check_update/delete
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

# プレイヤーヘッドを削除
    $execute in $(dimension) positioned $(x) $(y) $(z) run setblock ~ ~ ~ minecraft:air

# コールバック引数を設定
    data modify storage skin_model: callback.name set from storage skin_model:temp Element.name

# コールバック
    function #skin_model:failed
    data remove storage skin_model: callback
