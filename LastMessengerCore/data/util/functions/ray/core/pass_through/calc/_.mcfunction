#> util:ray/core/pass_through/calc/_
#
# Copyright © 2023 赤石愛
# This software is released under the MIT License, see LICENSE.
#
# @private
# @within function util:ray/core/pass_through/_

execute if score #X Util <= #Y Util if score #X Util <= #Z Util run function util:ray/core/pass_through/calc/x
execute if score #Y Util <= #X Util if score #Y Util <= #Z Util run function util:ray/core/pass_through/calc/y
execute if score #Z Util <= #X Util if score #Z Util <= #Y Util run function util:ray/core/pass_through/calc/z

## まだ欲しかったら繰り返し
execute unless data storage util:temp {count:0} run function util:ray/core/pass_through/calc/_
