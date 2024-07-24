#> util:ray/raycast_blocks
#
# 実行地点から実行方向にブロックにのみヒットするRayを投射します
#
# コールバック関数は、ヒットした地点から実行方向に-0.05m進んだ地点で、実行方向を向いて呼び出されます
#
# @input
#   storage util: in
#       callback: string
#           コールバック関数 (リソースパス)
#       maxDistance: float
#           Rayの長さ (m)
#
# @output @callback
#   storage util: out
#       hit: boolean
#           Rayとブロックが衝突したらtrue それ以外の場合はfalse
#       blockFace?: "UP" | "DOWN" | "NORTH" | "SOUTH" | "EAST" | "WEST"
#           Rayが衝突したブロックの面
#
# @api

function util:ray/core/raycast_blocks/_
