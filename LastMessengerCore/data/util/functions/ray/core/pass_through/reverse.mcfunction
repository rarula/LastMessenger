#> util:ray/core/pass_through/reverse
#
# Copyright © 2023 赤石愛
# This software is released under the MIT License, see LICENSE.
#
# @private
# @within function util:ray/core/pass_through/_

## 結果は反転している方が便利なので反転しちゃう
data modify storage util: out append from storage util:temp out[-1]
data remove storage util:temp out[-1]
execute if data storage util:temp out[0] run function util:ray/core/pass_through/reverse
