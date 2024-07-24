#> core:load/once
#
# 初回load時に呼び出される
#
# @within function core:load/_

#>
# @private
    #declare tag/function asset:on_load_once


#> バージョン設定
    data modify storage global: Version set value "0.1.0"


#> forceload設定
    execute in minecraft:overworld run forceload add 0 0


#> ShulkerBox設定
    execute in minecraft:overworld run setblock 0 -64 0 minecraft:orange_shulker_box{Lock:"LastMessenger"}


#region 汎用スコアボード
#> 一時変数
# @public
    scoreboard objectives remove Temp
    scoreboard objectives add Temp dummy

#> グローバル変数
# @public
    scoreboard objectives remove Global
    scoreboard objectives add Global dummy

#> 定数
# @public
    scoreboard objectives remove Const
    scoreboard objectives add Const dummy

#> ユーティリティ変数
# @private
# @within * util:**
    scoreboard objectives remove Util
    scoreboard objectives add Util dummy
#endregion


#region イベント用スコアボード
#> イベント: 初参加
# @within * core:**
    scoreboard objectives remove Event.onFirstJoin
    scoreboard objectives add Event.onFirstJoin custom:minecraft.play_time

#> イベント: 再参加
# @within * core:**
    scoreboard objectives remove Event.onRejoin
    scoreboard objectives add Event.onRejoin custom:minecraft.leave_game
#endregion


#region プレイヤー処理用スコアボード
#> プレイヤーのID
# @public
    scoreboard objectives remove Player.ID
    scoreboard objectives add Player.ID dummy
#endregion


#region エンティティ処理用スコアボード

#> エンティティのID
# @public
    scoreboard objectives remove Entity.ID
    scoreboard objectives add Entity.ID dummy

#> 自身に対する攻撃者のID
# @public
    scoreboard objectives remove Entity.AttackingPlayerID
    scoreboard objectives add Entity.AttackingPlayerID dummy

#> 自身に対してインタラクトしてきたプレイヤーのID
# @public
    scoreboard objectives remove Entity.InteractingPlayerID
    scoreboard objectives add Entity.InteractingPlayerID dummy
#endregion


#> グローバル変数初期化
    function core:load/init_score/global

#> 定数初期化
    function core:load/init_score/const


#> Assetに受け渡し
    function #asset:on_load_once
