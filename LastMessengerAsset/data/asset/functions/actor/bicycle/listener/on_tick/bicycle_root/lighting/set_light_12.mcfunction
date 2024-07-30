#> asset:actor/bicycle/listener/on_tick/bicycle_root/lighting/set_light_12
# @within function asset:actor/bicycle/listener/on_tick/bicycle_root/lighting/_

# ライトを消灯する為のmarkerを召喚
    summon minecraft:marker ~ ~ ~ {Tags:["Asset.Actor.Bicycle.Entity.Light"]}

# 点灯
    setblock ~ ~ ~ minecraft:light[level=12]
