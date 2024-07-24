#> entity_finder:init/_
#
# EntityFinderを初期化する
#
# @within function
#   asset:actor/*/method/core/spawn/**

#>
# @private
    #declare score_holder #TempIndex
    #declare score_holder #2
    #declare score_holder #2^15
    #declare score_holder #2^16


# タグを初期化
    tag @s remove EntityFinder.0-0
    tag @s remove EntityFinder.0-1
    tag @s remove EntityFinder.1-0
    tag @s remove EntityFinder.1-1
    tag @s remove EntityFinder.2-0
    tag @s remove EntityFinder.2-1
    tag @s remove EntityFinder.3-0
    tag @s remove EntityFinder.3-1
    tag @s remove EntityFinder.4-0
    tag @s remove EntityFinder.4-1
    tag @s remove EntityFinder.5-0
    tag @s remove EntityFinder.5-1
    tag @s remove EntityFinder.6-0
    tag @s remove EntityFinder.6-1
    tag @s remove EntityFinder.7-0
    tag @s remove EntityFinder.7-1
    tag @s remove EntityFinder.8-0
    tag @s remove EntityFinder.8-1
    tag @s remove EntityFinder.9-0
    tag @s remove EntityFinder.9-1
    tag @s remove EntityFinder.10-0
    tag @s remove EntityFinder.10-1
    tag @s remove EntityFinder.11-0
    tag @s remove EntityFinder.11-1
    tag @s remove EntityFinder.12-0
    tag @s remove EntityFinder.12-1
    tag @s remove EntityFinder.13-0
    tag @s remove EntityFinder.13-1
    tag @s remove EntityFinder.14-0
    tag @s remove EntityFinder.14-1
    tag @s remove EntityFinder.15-0
    tag @s remove EntityFinder.15-1

# IDを割り当て
    scoreboard players add #EntityIndex Global 1
    scoreboard players operation #EntityIndex Global %= #2^15 Const
    scoreboard players operation @s Entity.ID = #EntityIndex Global

# タグを割り当て
    scoreboard players operation #TempIndex Temp = #EntityIndex Global

    scoreboard players operation #TempIndex Temp *= #2^16 Const
    execute if score #TempIndex Temp matches 00.. run tag @s add EntityFinder.15-0
    execute if score #TempIndex Temp matches ..-1 run tag @s add EntityFinder.15-1

    scoreboard players operation #TempIndex Temp *= #2 Const
    execute if score #TempIndex Temp matches 00.. run tag @s add EntityFinder.14-0
    execute if score #TempIndex Temp matches ..-1 run tag @s add EntityFinder.14-1

    scoreboard players operation #TempIndex Temp *= #2 Const
    execute if score #TempIndex Temp matches 00.. run tag @s add EntityFinder.13-0
    execute if score #TempIndex Temp matches ..-1 run tag @s add EntityFinder.13-1

    scoreboard players operation #TempIndex Temp *= #2 Const
    execute if score #TempIndex Temp matches 00.. run tag @s add EntityFinder.12-0
    execute if score #TempIndex Temp matches ..-1 run tag @s add EntityFinder.12-1

    scoreboard players operation #TempIndex Temp *= #2 Const
    execute if score #TempIndex Temp matches 00.. run tag @s add EntityFinder.11-0
    execute if score #TempIndex Temp matches ..-1 run tag @s add EntityFinder.11-1

    scoreboard players operation #TempIndex Temp *= #2 Const
    execute if score #TempIndex Temp matches 00.. run tag @s add EntityFinder.10-0
    execute if score #TempIndex Temp matches ..-1 run tag @s add EntityFinder.10-1

    scoreboard players operation #TempIndex Temp *= #2 Const
    execute if score #TempIndex Temp matches 00.. run tag @s add EntityFinder.9-0
    execute if score #TempIndex Temp matches ..-1 run tag @s add EntityFinder.9-1

    scoreboard players operation #TempIndex Temp *= #2 Const
    execute if score #TempIndex Temp matches 00.. run tag @s add EntityFinder.8-0
    execute if score #TempIndex Temp matches ..-1 run tag @s add EntityFinder.8-1

    scoreboard players operation #TempIndex Temp *= #2 Const
    execute if score #TempIndex Temp matches 00.. run tag @s add EntityFinder.7-0
    execute if score #TempIndex Temp matches ..-1 run tag @s add EntityFinder.7-1

    scoreboard players operation #TempIndex Temp *= #2 Const
    execute if score #TempIndex Temp matches 00.. run tag @s add EntityFinder.6-0
    execute if score #TempIndex Temp matches ..-1 run tag @s add EntityFinder.6-1

    scoreboard players operation #TempIndex Temp *= #2 Const
    execute if score #TempIndex Temp matches 00.. run tag @s add EntityFinder.5-0
    execute if score #TempIndex Temp matches ..-1 run tag @s add EntityFinder.5-1

    scoreboard players operation #TempIndex Temp *= #2 Const
    execute if score #TempIndex Temp matches 00.. run tag @s add EntityFinder.4-0
    execute if score #TempIndex Temp matches ..-1 run tag @s add EntityFinder.4-1

    scoreboard players operation #TempIndex Temp *= #2 Const
    execute if score #TempIndex Temp matches 00.. run tag @s add EntityFinder.3-0
    execute if score #TempIndex Temp matches ..-1 run tag @s add EntityFinder.3-1

    scoreboard players operation #TempIndex Temp *= #2 Const
    execute if score #TempIndex Temp matches 00.. run tag @s add EntityFinder.2-0
    execute if score #TempIndex Temp matches ..-1 run tag @s add EntityFinder.2-1

    scoreboard players operation #TempIndex Temp *= #2 Const
    execute if score #TempIndex Temp matches 00.. run tag @s add EntityFinder.1-0
    execute if score #TempIndex Temp matches ..-1 run tag @s add EntityFinder.1-1

    scoreboard players operation #TempIndex Temp *= #2 Const
    execute if score #TempIndex Temp matches 00.. run tag @s add EntityFinder.0-0
    execute if score #TempIndex Temp matches ..-1 run tag @s add EntityFinder.0-1

# リセット
    scoreboard players reset #TempIndex Temp
