#> skin_model:core/tick/check_update/foreach
#
# キューからひとつ取り出して、ブロックが更新されたか確認する
#
# @private
# @within function skin_model:core/tick/check_update/_

#>
# @private
    #declare score_holder #QueueTime


# キューからひとつ取り出す
    data modify storage skin_model:temp Element set from storage skin_model: Queue[-1]
    data remove storage skin_model: Queue[-1]

# gametimeの差が60tick以上あるか確認
    execute store result score #QueueTime SkinModelDetection run data get storage skin_model:temp Element.time
    scoreboard players operation #TimeDiff SkinModelDetection = #Gametime SkinModelDetection
    scoreboard players operation #TimeDiff SkinModelDetection -= #QueueTime SkinModelDetection

# gametimeの差が60tick以上 -> キューから削除
    execute if score #TimeDiff SkinModelDetection matches 60.. run function skin_model:core/tick/check_update/delete with storage skin_model:temp Element

# gametimeの差が60tick未満 -> ブロックが更新されたか確認
    execute if score #TimeDiff SkinModelDetection matches ..59 run function skin_model:core/tick/check_update/foreach_do with storage skin_model:temp Element

# gametimeの差が60tick未満 && ブロックが更新されていない -> RevertQueueに追加
    execute if score #TimeDiff SkinModelDetection matches ..59 unless data storage skin_model:temp Properties run data modify storage skin_model:temp RevertQueue append from storage skin_model:temp Element

# リセット
    data remove storage skin_model:temp Element
    scoreboard players reset #QueueTime SkinModelDetection

# ブロックが更新されていない -> 再帰
    execute unless data storage skin_model:temp Properties if data storage skin_model: Queue[0] run function skin_model:core/tick/check_update/foreach
