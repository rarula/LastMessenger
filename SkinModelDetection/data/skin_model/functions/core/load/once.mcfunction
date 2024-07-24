#> skin_model:core/load/once
#
# 初回load時に呼び出される
#
# @within function skin_model:core/load/_

# バージョン設定
    data modify storage skin_model: Version set value "1.0.0"

#> スコアボード設定
# @within * skin_model:**
    scoreboard objectives add SkinModelDetection dummy
