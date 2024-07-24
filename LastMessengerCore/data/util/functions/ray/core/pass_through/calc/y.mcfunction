#> util:ray/core/pass_through/calc/y
#
# Copyright © 2023 赤石愛
# This software is released under the MIT License, see LICENSE.
#
# @within function util:ray/core/pass_through/calc/_

execute unless data storage util:temp direction{X:0} run scoreboard players operation #X Util -= #Y Util
execute unless data storage util:temp direction{Z:0} run scoreboard players operation #Z Util -= #Y Util
scoreboard players operation #Y Util = #DY Util

## 移動方向を保存
execute if data storage util:temp signs{Y:1} unless data storage util:temp {count:0} run data modify storage util:temp out append value "+Y"
execute if data storage util:temp signs{Y:-1} unless data storage util:temp {count:0} run data modify storage util:temp out append value "-Y"
## カウントを１減らす
execute store result storage util:temp count int 0.9999999999 run data get storage util:temp count
