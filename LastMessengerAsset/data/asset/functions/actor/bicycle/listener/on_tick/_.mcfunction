#> asset:actor/bicycle/listener/on_tick/_
#
# tick時に呼び出される
#
# @within tag/function asset:actor/on_tick

# 自転車で走行中のプレイヤーに対する処理
    execute as @a if entity @s[tag=GlobalPlayerTag.isRiding] at @s run function asset:actor/bicycle/listener/on_tick/player/_

# 自転車に対する処理
    execute as @e[type=#animated_java:root, tag=Asset.Actor.Bicycle.Entity.Root] at @s run function asset:actor/bicycle/listener/on_tick/bicycle_root/_

# 自転車のVehicleOriginに対する処理
    execute as @e[type=#animated_java:locator_origin, tag=Asset.Actor.Bicycle.Entity.VehicleOrigin] at @s run function asset:actor/bicycle/listener/on_tick/bicycle_vehicle_origin/_

# 自転車のBoundingBoxOriginに対する処理
    execute as @e[type=#animated_java:locator_origin, tag=Asset.Actor.Bicycle.Entity.BoundingBoxOrigin] at @s run function asset:actor/bicycle/listener/on_tick/bicycle_bounding_box_origin/_
