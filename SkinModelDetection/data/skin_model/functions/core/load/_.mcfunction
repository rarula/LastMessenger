#> skin_model:core/load/_
#
# load時に呼び出される
#
# @within tag/function minecraft:load

# 初回load時に呼び出す
    execute unless data storage skin_model: Version run function skin_model:core/load/once
