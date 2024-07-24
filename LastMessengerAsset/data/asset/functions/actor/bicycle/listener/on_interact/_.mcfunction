#> asset:actor/bicycle/listener/on_interact/_
#
# エンティティにインタラクトした時に呼び出される
#
# @context
#   as 作用者
#   at 作用者
#   @a[tag=CoreEntityFlag.InteractingPlayer] 作用者
#   @e[tag=CoreEntityFlag.InteractedEntity] 被作用者
#
# @within tag/function asset:actor/on_interact

# 被作用者が自転車 & 自転車に誰かが乗車中でない -> 作用者を乗車
    execute if entity @e[type=minecraft:interaction, tag=CoreEntityFlag.InteractedEntity, tag=Asset.Actor.Bicycle, tag=!Asset.Actor.Bicycle.Flag.Riding] run function asset:actor/bicycle/listener/on_interact/mount/_
