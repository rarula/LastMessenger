#> asset:actor/bicycle/listener/on_tick/player/transfer/as_player
# @within function asset:actor/bicycle/listener/on_tick/player/transfer/_

# Vehicleに乗車
    ride @s dismount
    ride @s mount @e[tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.Vehicle, limit=1]
