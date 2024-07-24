#> core:handler/on_join/set_skin_model_flag/failed/_
#
# スキンモデルの検出に失敗した時に呼び出される
#
# @within tag/function skin_model:failed

function core:handler/on_join/set_skin_model_flag/failed/apply_tag with storage skin_model: callback

tellraw @a [{"storage":"skin_model:", "nbt":"callback.name"}, "のスキンモデルの検出に失敗しました"]
