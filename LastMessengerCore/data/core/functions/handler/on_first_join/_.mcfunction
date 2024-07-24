#> core:handler/on_first_join/_
#
# プレイヤーが初参加した時に呼び出される
#
# @within function core:tick/player

tellraw @s "Event: onFirstJoin"

# IDを割り当て
    scoreboard players add #PlayerIndex Global 1
    scoreboard players operation @s Player.ID = #PlayerIndex Global

# onJoinを発火
    function core:handler/on_join/_
