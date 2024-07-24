#> asset:actor/bicycle/listener/on_interact/mount/_
# @within function asset:actor/bicycle/listener/on_interact/_

#>
# @within function asset:actor/bicycle/listener/on_interact/mount/**
    #declare tag Asset.Actor.Bicycle.TargetBicycle


# 自転車を構成するエンティティにタグを設定
    execute as @e[tag=Asset.Actor.Bicycle] if score @s Asset.Actor.Bicycle.Id = @e[type=minecraft:interaction, tag=CoreEntityFlag.InteractedEntity, limit=1] Asset.Actor.Bicycle.Id run tag @s add Asset.Actor.Bicycle.TargetBicycle

# 作用者に対する処理
    function asset:actor/bicycle/listener/on_interact/mount/as_player

# 自転車に対する処理
    function asset:actor/bicycle/listener/on_interact/mount/as_bicycle

# リセット
    tag @e[tag=Asset.Actor.Bicycle.TargetBicycle] remove Asset.Actor.Bicycle.TargetBicycle
