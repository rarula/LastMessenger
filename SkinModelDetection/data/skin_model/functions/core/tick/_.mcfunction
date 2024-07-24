#> skin_model:core/tick/_
#
# tick時に呼び出される
#
# @within tag/function minecraft:tick

# キューがあればブロックが更新されたか確認
    execute if data storage skin_model: Queue[0] run function skin_model:core/tick/check_update/_
