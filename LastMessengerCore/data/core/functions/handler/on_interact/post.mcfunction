#> core:handler/on_interact/post
# @within function core:handler/on_interact/_

# リセット
    tag @s remove CoreEntityFlag.InteractingPlayer
    tag @e[tag=CoreEntityFlag.InteractedEntity] remove CoreEntityFlag.InteractedEntity
    advancement revoke @s only core:player_interacted_with_entity
