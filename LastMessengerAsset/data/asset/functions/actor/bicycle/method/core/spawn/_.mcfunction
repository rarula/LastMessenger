#> asset:actor/bicycle/method/core/spawn/_
#
# @input
#   storage asset:actor in
#       color: int
#
# @within function
#   asset:actor/bicycle/method/spawn
#   asset:actor/bicycle/method/core/spawn_by_player/_

#>
# @private
    #declare tag aj.bicycle.root
    #declare tag aj.bicycle.locator.vehicle
    #declare tag aj.bicycle.locator_origin.vehicle
    #declare tag aj.bicycle.locator_origin.bounding_box_0
    #declare tag aj.bicycle.locator_origin.bounding_box_1
    #declare tag aj.bicycle.locator_origin.bounding_box_2
    #declare tag aj.bicycle.locator.bounding_box_0
    #declare tag aj.bicycle.locator.bounding_box_1
    #declare tag aj.bicycle.locator.bounding_box_2
    #declare tag aj.bicycle.bone

#>
# @private
    #declare function animated_java:bicycle/summon
    #declare function animated_java:bicycle/animations/idle/stop


# 自転車を召喚
    function animated_java:bicycle/summon

# IDを増加
    scoreboard players add #BicycleEntityIndex Global 1

# Rootを初期化
    execute as @e[type=#animated_java:root, tag=aj.bicycle.root, tag=!Asset.Actor.Bicycle.Flag.Initialized] run function asset:actor/bicycle/method/core/spawn/init_root

# Vehicleを初期化
    execute as @e[type=minecraft:item_display, tag=aj.bicycle.locator.vehicle, tag=!Asset.Actor.Bicycle.Flag.Initialized] run function asset:actor/bicycle/method/core/spawn/init_vehicle

# VehicleOriginを初期化
    execute as @e[type=#animated_java:locator_origin, tag=aj.bicycle.locator_origin.vehicle, tag=!Asset.Actor.Bicycle.Flag.Initialized] run function asset:actor/bicycle/method/core/spawn/init_vehicle_origin

# BoundingBoxOriginを初期化
    execute as @e[type=#animated_java:locator_origin, tag=aj.bicycle.locator_origin.bounding_box_0, tag=!Asset.Actor.Bicycle.Flag.Initialized] run function asset:actor/bicycle/method/core/spawn/init_bounding_box_origin
    execute as @e[type=#animated_java:locator_origin, tag=aj.bicycle.locator_origin.bounding_box_1, tag=!Asset.Actor.Bicycle.Flag.Initialized] run function asset:actor/bicycle/method/core/spawn/init_bounding_box_origin
    execute as @e[type=#animated_java:locator_origin, tag=aj.bicycle.locator_origin.bounding_box_2, tag=!Asset.Actor.Bicycle.Flag.Initialized] run function asset:actor/bicycle/method/core/spawn/init_bounding_box_origin

# BoundingBoxを初期化
    execute as @e[type=minecraft:interaction, tag=aj.bicycle.locator.bounding_box_0, tag=!Asset.Actor.Bicycle.Flag.Initialized] run function asset:actor/bicycle/method/core/spawn/init_bounding_box_collider_back
    execute as @e[type=minecraft:interaction, tag=aj.bicycle.locator.bounding_box_1, tag=!Asset.Actor.Bicycle.Flag.Initialized] run function asset:actor/bicycle/method/core/spawn/init_bounding_box_collider_front_back
    execute as @e[type=minecraft:interaction, tag=aj.bicycle.locator.bounding_box_2, tag=!Asset.Actor.Bicycle.Flag.Initialized] run function asset:actor/bicycle/method/core/spawn/init_bounding_box_collider_front

# PlayerSkinを初期化
    execute as @e[type=#animated_java:bone, tag=aj.bicycle.bone.head, tag=!Asset.Actor.Bicycle.Flag.Initialized] run function asset:actor/bicycle/method/core/spawn/init_player_skin
    execute as @e[type=#animated_java:bone, tag=aj.bicycle.bone.torso, tag=!Asset.Actor.Bicycle.Flag.Initialized] run function asset:actor/bicycle/method/core/spawn/init_player_skin
    execute as @e[type=#animated_java:bone, tag=aj.bicycle.bone.left_arm, tag=!Asset.Actor.Bicycle.Flag.Initialized] run function asset:actor/bicycle/method/core/spawn/init_player_skin
    execute as @e[type=#animated_java:bone, tag=aj.bicycle.bone.left_leg, tag=!Asset.Actor.Bicycle.Flag.Initialized] run function asset:actor/bicycle/method/core/spawn/init_player_skin
    execute as @e[type=#animated_java:bone, tag=aj.bicycle.bone.right_arm, tag=!Asset.Actor.Bicycle.Flag.Initialized] run function asset:actor/bicycle/method/core/spawn/init_player_skin
    execute as @e[type=#animated_java:bone, tag=aj.bicycle.bone.right_leg, tag=!Asset.Actor.Bicycle.Flag.Initialized] run function asset:actor/bicycle/method/core/spawn/init_player_skin

# PlayerSkinを除くBoneを初期化
    execute as @e[type=#animated_java:bone, tag=aj.bicycle.bone, tag=!Asset.Actor.Bicycle.Entity.PlayerSkin, tag=!Asset.Actor.Bicycle.Flag.Initialized2] run function asset:actor/bicycle/method/core/spawn/init_bicycle_bone

# Boneを初期化
    execute as @e[type=#animated_java:bone, tag=aj.bicycle.bone, tag=!Asset.Actor.Bicycle.Flag.Initialized3] run function asset:actor/bicycle/method/core/spawn/init_bone


# リセット
    data remove storage asset:actor in
