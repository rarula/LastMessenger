#> core:handler/on_join/set_skin_model_flag/detected/_
#
# スキンモデルの検出に成功した時に呼び出される
#
# @within tag/function skin_model:detected

function core:handler/on_join/set_skin_model_flag/detected/apply_tag with storage skin_model: callback

tellraw @a [{"storage":"skin_model:", "nbt":"callback.name"}, "のスキンモデル -> ", {"storage":"skin_model:", "nbt":"callback.model"}]
