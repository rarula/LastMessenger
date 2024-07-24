#> skin_model:api/detect
#
# 指定されたプレイヤーのスキンモデルを非同期的に検出します
#
# @input
#   storage skin_model: in
#       name: string
#           プレイヤーの名前
#       dimension: string
#           スキンモデルの検出に使用するプレイヤーヘッドを配置するディメンション
#       x: int
#           スキンモデルの検出に使用するプレイヤーヘッドを配置するX座標
#       y: int
#           スキンモデルの検出に使用するプレイヤーヘッドを配置するY座標
#       z: int
#           スキンモデルの検出に使用するプレイヤーヘッドを配置するZ座標
#
# @callback
#   skin_model:detected
#       検出に成功した時に呼び出される
#   skin_model:failed
#       検出に失敗した時に呼び出される
#
# @callbackArgs
#   skin_model:detected
#       storage skin_model: callback
#           name: string
#               プレイヤーの名前
#           model: "wide" | "slim"
#               スキンモデルの種類
#   skin_model:failed
#       storage skin_model: callback
#           name: string
#               プレイヤーの名前
#
# @api

function skin_model:api/core/detect with storage skin_model: in
