#> util:ray/pass_through
#
# Copyright © 2023 赤石愛
# This software is released under the MIT License, see LICENSE.
#
# 通過領域の移動方向を求めます
#
# @input
#   storage util:
#       in: int
#           移動ブロック数
#
# @output
#   storage util:
#       out: ("+X" | "-X" | "+Y" | "-Y" | "+Z" | "-Z")[]
#           移動方向のリスト
#
# @api

function util:ray/core/pass_through/_
