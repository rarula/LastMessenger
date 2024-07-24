#> core:handler/on_join/set_skin_model_flag/_
#
# SkinModelFlagを設定する
#
# @within function core:handler/on_join/_

# プレイヤーの名前を取得
    function util:player/get_name

# スキンモデルを検出
    data modify storage skin_model: in.name set from storage util: out.name
    data modify storage skin_model: in.dimension set value "minecraft:overworld"
    data modify storage skin_model: in.y set value -50
    execute store result storage skin_model: in.x int 1.0 run scoreboard players get #SkinModelDetectionCoordinatesX Global
    execute store result storage skin_model: in.z int 1.0 run scoreboard players get #SkinModelDetectionCoordinatesZ Global
    function skin_model:api/detect

# スキンモデルの検出に使用する座標を更新
    scoreboard players add #SkinModelDetectionCoordinatesX Global 1
    execute if score #SkinModelDetectionCoordinatesX Global matches 16.. run scoreboard players add #SkinModelDetectionCoordinatesZ Global 1
    execute if score #SkinModelDetectionCoordinatesX Global matches 16.. run scoreboard players set #SkinModelDetectionCoordinatesX Global 0
    execute if score #SkinModelDetectionCoordinatesZ Global matches 16.. run scoreboard players set #SkinModelDetectionCoordinatesZ Global 0

# リセット
    data remove storage util: out
