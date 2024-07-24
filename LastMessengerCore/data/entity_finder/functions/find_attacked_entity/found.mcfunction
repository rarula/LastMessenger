#> entity_finder:find_attacked_entity/found
# @within function entity_finder:find_attacked_entity/filter/0

# 紐付け用スコアを設定
    scoreboard players operation @s Entity.AttackingPlayerID = @a[tag=EntityFinder.FindAttackedEntity.This] Player.ID
