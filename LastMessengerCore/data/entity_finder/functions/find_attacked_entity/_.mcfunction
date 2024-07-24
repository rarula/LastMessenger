#> entity_finder:find_attacked_entity/_
# @within advancement entity_finder:find_attacked_entity

#>
# @within function entity_finder:find_attacked_entity/**
    #declare tag EntityFinder.FindAttackedEntity.This

#>
# @within function entity_finder:find_attacked_entity/**
    #declare advancement entity_finder:find_attacked_entity


# フィルタリング
    tag @s add EntityFinder.FindAttackedEntity.This
    execute as @e[type=#util:attackable, distance=..9.0] run function entity_finder:find_attacked_entity/filter/15
    tag @s remove EntityFinder.FindAttackedEntity.This

# リセット
    advancement revoke @s only entity_finder:find_attacked_entity
