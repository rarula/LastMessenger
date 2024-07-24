#> asset:actor/bicycle/listener/on_tick/bicycle_bounding_box_origin/_
#
# 自転車のBoundingBoxOriginに対する処理
#
# @within function asset:actor/bicycle/listener/on_tick/_

#>
# @private
    #declare tag aj.bicycle.locator_origin.bounding_box_0
    #declare tag aj.bicycle.locator_origin.bounding_box_1
    #declare tag aj.bicycle.locator_origin.bounding_box_2

# 自転車の座標に追従
    execute if entity @s[tag=aj.bicycle.locator_origin.bounding_box_0] on origin run tp @s ^0 ^0 ^-0.74996 ~0 ~0
    execute if entity @s[tag=aj.bicycle.locator_origin.bounding_box_1] on origin run tp @s ^0 ^0 ^0.00004 ~0 ~0
    execute if entity @s[tag=aj.bicycle.locator_origin.bounding_box_2] on origin run tp @s ^0 ^0 ^0.81254 ~0 ~0
