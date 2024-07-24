#> asset:actor/bicycle/listener/on_tick/player/dismount/as_player
# @within function asset:actor/bicycle/listener/on_tick/player/dismount/_

# 自転車から下車したとしてタグを削除
    tag @s remove GlobalPlayerTag.isRiding

# 自転車から下車したとして透明化を解除
    effect clear @s minecraft:invisibility

# 紐付け用スコアをリセット
    scoreboard players reset @s Asset.Actor.Bicycle.Id
    scoreboard players reset @s Asset.Actor.Bicycle.PreviousId
