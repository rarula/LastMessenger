#> core:handler/on_rejoin/_
#
# プレイヤーが再参加した時に呼び出される
#
# @within function core:tick/player

tellraw @s "Event: onRejoin"

# onJoinを発火
    function core:handler/on_join/_

## post
    function core:handler/on_rejoin/post
