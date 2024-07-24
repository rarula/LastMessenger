#> core:handler/on_attack/_
#
# エンティティを攻撃した時に呼び出される
#
# @within function core:tick/player

#>
# @private
    #declare tag/function asset:on_attack


tellraw @s "Event: onAttack"

# 攻撃者/被害者にタグを設定
    tag @s add CoreEntityFlag.AttackingPlayer
    execute as @e[scores={Entity.AttackingPlayerID=-2147483648..2147483647}] if score @s Entity.AttackingPlayerID = @a[tag=CoreEntityFlag.AttackingPlayer, limit=1] Player.ID run tag @s add CoreEntityFlag.AttackedEntity

# Assetを呼び出す
    function #asset:on_attack

## post
    function core:handler/on_attack/post
