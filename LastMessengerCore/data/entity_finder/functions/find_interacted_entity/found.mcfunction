#> entity_finder:find_interacted_entity/found
# @within function entity_finder:find_interacted_entity/filter/0

# 紐付け用スコアを設定
    scoreboard players operation @s Entity.InteractingPlayerID = @a[tag=EntityFinder.FindInteractedEntity.This] Player.ID
