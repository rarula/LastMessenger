#> asset:actor/bicycle/listener/on_load_once/_
#
# 初回load時に呼び出される
#
# @within tag/function asset:actor/on_load_once

#> 自転車のID
# @within * asset:actor/bicycle/**
    scoreboard objectives remove Asset.Actor.Bicycle.Id
    scoreboard objectives add Asset.Actor.Bicycle.Id dummy

#> プレイヤーが乗っている自転車の前tickのID
# @within * asset:actor/bicycle/**
    scoreboard objectives remove Asset.Actor.Bicycle.PreviousId
    scoreboard objectives add Asset.Actor.Bicycle.PreviousId dummy

#> 自転車のY座標
# @within * asset:actor/bicycle/**
    scoreboard objectives remove Asset.Actor.Bicycle.Y
    scoreboard objectives add Asset.Actor.Bicycle.Y dummy

#> 自転車の加速
# @within * asset:actor/bicycle/**
    scoreboard objectives remove Asset.Actor.Bicycle.Acceleration
    scoreboard objectives add Asset.Actor.Bicycle.Acceleration dummy

#> 自転車の落下の加速
# @within * asset:actor/bicycle/**
    scoreboard objectives remove Asset.Actor.Bicycle.FallAcceleration
    scoreboard objectives add Asset.Actor.Bicycle.FallAcceleration dummy

#> 自転車の色
# @within * asset:actor/bicycle/**
    scoreboard objectives remove Asset.Actor.Bicycle.Color
    scoreboard objectives add Asset.Actor.Bicycle.Color dummy


#> 自転車に乗車中のプレイヤーのチーム
# @public
    team remove Asset.Actor.Bicycle.Team
    team add Asset.Actor.Bicycle.Team
    team modify Asset.Actor.Bicycle.Team collisionRule never
    team modify Asset.Actor.Bicycle.Team seeFriendlyInvisibles false
