#> core:tick/player
#
# プレイヤーに対する処理を行う
#
# @within function core:tick/_

# プレイヤーが初参加した時
    execute if entity @s[scores={Event.onFirstJoin=1}] run function core:handler/on_first_join/_

# プレイヤーが再参加した時
    execute if entity @s[scores={Event.onRejoin=1..}] run function core:handler/on_rejoin/_

# エンティティを攻撃した時
    execute if entity @s[advancements={core:player_hurt_entity=true}] run function core:handler/on_attack/_

# エンティティにインタラクトした時
    execute if entity @s[advancements={core:player_interacted_with_entity=true}] run function core:handler/on_interact/_
