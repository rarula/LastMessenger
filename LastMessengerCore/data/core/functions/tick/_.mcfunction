#> core:tick/_
#
# tick時に呼び出される
#
# @within tag/function minecraft:tick

#>
# @private
    #declare tag/function asset:on_tick


# 現在のgametimeを保存
    execute store result score #Gametime Global run time query gametime

# プレイヤーに対する処理
    execute as @a at @s run function core:tick/player

# Assetに対する処理
    function #asset:on_tick

# リセット
    scoreboard players reset @e[scores={Entity.AttackingPlayerID=-2147483648..2147483647}] Entity.AttackingPlayerID
    scoreboard players reset @e[scores={Entity.InteractingPlayerID=-2147483648..2147483647}] Entity.InteractingPlayerID
