#> asset:actor/bicycle/listener/on_tick/player/riding/forward/summon
# @within function asset:actor/bicycle/listener/on_tick/player/riding/forward/_

# 計算用のmarkerを召喚
    summon minecraft:marker ~ ~ ~ {Tags:["Asset.Actor.Bicycle.TempEntity", "Asset.Actor.Bicycle.TempEntity0"]}
    $summon minecraft:marker ^ ^ ^$(position) {Tags:["Asset.Actor.Bicycle.TempEntity", "Asset.Actor.Bicycle.TempEntity1"]}
