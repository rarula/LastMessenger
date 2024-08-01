#> asset:actor/bicycle/listener/on_tick/bicycle_root/adjust_vehicle_position/_
#
# 自転車のVehicleの位置を調整
#
# @within function asset:actor/bicycle/listener/on_tick/bicycle_root/_

execute as @e[type=#animated_java:locator_origin, tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.VehicleOrigin] at @s on origin run tp @s ^0 ^1.03125 ^0.27817 ~ ~
