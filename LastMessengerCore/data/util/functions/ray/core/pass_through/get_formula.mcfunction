#> util:ray/core/pass_through/get_formula
#
# Copyright © 2023 赤石愛
# This software is released under the MIT License, see LICENSE.
#
# @within function util:ray/core/pass_through/_

## 視線元の場所 3桁
data modify storage util:temp pos set from entity @s Pos
## 視線の方向 3桁
execute positioned 0.0 0.0 0.0 positioned ^ ^ ^1 run tp @s ~0.00005 ~0.00005 ~0.00005
data modify storage util:temp direction set from entity @s Pos

## エンティティは用済みなので消します
kill @s
