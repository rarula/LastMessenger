#> util:player/core/get_name/_
#
# @output
#   storage util: out
#       name: string
#
# @within function util:player/get_name

#>
# @private
    #declare loot_table util:player/get_name/fill_player_head


# プレイヤーヘッドを配置
    loot replace block 0 -64 0 container.0 loot util:player/get_name/fill_player_head

# プレイヤーの名前を出力
    data modify storage util: out.name set from block 0 -64 0 Items[{Slot:0b}].tag.SkullOwner.Name

# リセット
    item replace block 0 -64 0 container.0 with minecraft:air
