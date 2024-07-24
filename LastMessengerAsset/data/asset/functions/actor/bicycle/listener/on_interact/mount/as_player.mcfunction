#> asset:actor/bicycle/listener/on_interact/mount/as_player
# @within function asset:actor/bicycle/listener/on_interact/mount/_

# 乗車中としてタグを設定
    tag @s add GlobalPlayerTag.isRiding

# 乗車中として透明化
    effect give @s minecraft:invisibility infinite 1 true

# Vehicleに乗車
    ride @s dismount
    ride @s mount @e[tag=Asset.Actor.Bicycle.TargetBicycle, tag=Asset.Actor.Bicycle.Entity.Vehicle, limit=1]

# 紐付け用スコアを設定
    scoreboard players operation @s Asset.Actor.Bicycle.Id = @e[type=minecraft:interaction, tag=CoreEntityFlag.InteractedEntity] Asset.Actor.Bicycle.Id
