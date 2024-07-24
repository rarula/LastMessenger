#> entity_finder:find_interacted_entity/filter/1
# @within function entity_finder:find_interacted_entity/filter/2

execute if entity @a[tag=EntityFinder.FindInteractedEntity.This, advancements={entity_finder:find_interacted_entity={1-0=true}}] if entity @s[tag=EntityFinder.1-0] run function entity_finder:find_interacted_entity/filter/0
execute if entity @a[tag=EntityFinder.FindInteractedEntity.This, advancements={entity_finder:find_interacted_entity={1-1=true}}] if entity @s[tag=EntityFinder.1-1] run function entity_finder:find_interacted_entity/filter/0
