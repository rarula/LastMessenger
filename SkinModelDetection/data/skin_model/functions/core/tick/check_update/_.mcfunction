#> skin_model:core/tick/check_update/_
#
# キューからひとつひとつ取り出す前後処理
#
# @within function skin_model:core/tick/_

#>
# @within function
#   skin_model:core/tick/check_update/_
#   skin_model:core/tick/check_update/foreach
    #declare score_holder #Gametime
    #declare score_holder #TimeDiff


# gametimeを取得
    execute store result score #Gametime SkinModelDetection run time query gametime

# キューからひとつひとつ取り出す
    function skin_model:core/tick/check_update/foreach

# RevertQueueから戻す
    function skin_model:core/tick/check_update/revert

# リセット
    data remove storage skin_model:temp RevertQueue
    data remove storage skin_model:temp Properties
    scoreboard players reset #Gametime SkinModelDetection
    scoreboard players reset #TimeDiff SkinModelDetection
