#> util:ray/core/pass_through/calc/z
#
# Copyright © 2023 赤石愛
# This software is released under the MIT License, see LICENSE.
#
# @within function util:ray/core/pass_through/calc/_

execute unless data storage util:temp direction{X:0} run scoreboard players operation #X Util -= #Z Util
execute unless data storage util:temp direction{Y:0} run scoreboard players operation #Y Util -= #Z Util
scoreboard players operation #Z Util = #DZ Util

## 移動方向を保存
execute if data storage util:temp signs{Z:1} unless data storage util:temp {count:0} run data modify storage util:temp out append value "+Z"
execute if data storage util:temp signs{Z:-1} unless data storage util:temp {count:0} run data modify storage util:temp out append value "-Z"
## カウントを１減らす
execute store result storage util:temp count int 0.9999999999 run data get storage util:temp count
