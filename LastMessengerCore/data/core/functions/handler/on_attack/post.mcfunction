#> core:handler/on_attack/post
# @within function core:handler/on_attack/_

# リセット
    tag @s remove CoreEntityFlag.AttackingPlayer
    tag @e[tag=CoreEntityFlag.AttackedEntity] remove CoreEntityFlag.AttackedEntity
    advancement revoke @s only core:player_hurt_entity
