#> util:ray/core/pass_through/calc/x
#
# Copyright © 2023 赤石愛
# This software is released under the MIT License, see LICENSE.
#
# @within function util:ray/core/pass_through/calc/_

execute unless data storage util:temp direction{Y:0} run scoreboard players operation #Y Util -= #X Util
execute unless data storage util:temp direction{Z:0} run scoreboard players operation #Z Util -= #X Util
scoreboard players operation #X Util = #DX Util

## 移動方向を保存
execute if data storage util:temp signs{X:1} unless data storage util:temp {count:0} run data modify storage util:temp out append value "+X"
execute if data storage util:temp signs{X:-1} unless data storage util:temp {count:0} run data modify storage util:temp out append value "-X"
## カウントを１減らす
execute store result storage util:temp count int 0.9999999999 run data get storage util:temp count
