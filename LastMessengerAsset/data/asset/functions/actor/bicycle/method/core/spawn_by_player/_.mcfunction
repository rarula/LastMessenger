#> asset:actor/bicycle/method/core/spawn_by_player/_
# @within function asset:actor/bicycle/method/spawn_by_player

# bicycleの色を指定
    execute store result storage asset:actor in.color int 1.0 run scoreboard players get @s Asset.Actor.Bicycle.Color

# bicycleを生成
    function asset:actor/bicycle/method/core/spawn/_
