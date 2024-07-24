#> core:handler/on_join/set_skin_model_flag/detected/apply_tag
# @within function core:handler/on_join/set_skin_model_flag/detected/_

$execute if data storage skin_model: callback{model:"wide"} as $(name) run tag @s remove GlobalPlayerTag.isSlim
$execute if data storage skin_model: callback{model:"slim"} as $(name) run tag @s add GlobalPlayerTag.isSlim
