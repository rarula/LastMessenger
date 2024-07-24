#> core:handler/on_interact/_
#
# エンティティにインタラクトした時に呼び出される
#
# @within function core:tick/player

#>
# @private
    #declare tag/function asset:on_interact


tellraw @s "Event: onInteract"

# 作用者/被作用者にタグを設定
    tag @s add CoreEntityFlag.InteractingPlayer
    execute as @e[scores={Entity.InteractingPlayerID=-2147483648..2147483647}] if score @s Entity.InteractingPlayerID = @a[tag=CoreEntityFlag.InteractingPlayer, limit=1] Player.ID run tag @s add CoreEntityFlag.InteractedEntity

# Assetを呼び出す
    function #asset:on_interact

## post
    function core:handler/on_interact/post
