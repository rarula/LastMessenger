#> entity_finder:find_interacted_entity/_
# @within advancement entity_finder:find_interacted_entity

#>
# @within function entity_finder:find_interacted_entity/**
    #declare tag EntityFinder.FindInteractedEntity.This

#>
# @within function entity_finder:find_interacted_entity/**
    #declare advancement entity_finder:find_interacted_entity


# フィルタリング
    tag @s add EntityFinder.FindInteractedEntity.This
    execute as @e[type=#util:interactable, distance=..9.0] run function entity_finder:find_interacted_entity/filter/15
    tag @s remove EntityFinder.FindInteractedEntity.This

# リセット
    advancement revoke @s only entity_finder:find_interacted_entity
