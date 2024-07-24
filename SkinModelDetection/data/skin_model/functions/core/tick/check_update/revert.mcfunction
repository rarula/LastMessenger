#> skin_model:core/tick/check_update/revert
# @private
# @within function skin_model:core/tick/check_update/_

# RevertQueueから一つ戻す
    data modify storage skin_model: Queue append from storage skin_model:temp RevertQueue[-1]
    data remove storage skin_model:temp RevertQueue[-1]

# 再帰
    execute if data storage skin_model:temp RevertQueue[0] run function skin_model:core/tick/check_update/revert
