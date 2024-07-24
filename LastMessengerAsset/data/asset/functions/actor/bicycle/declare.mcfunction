#> asset:actor/bicycle/declare
# @private

#> 自転車で走行中の状態
# @public
    #declare tag GlobalPlayerTag.isRiding


#>
# @within * asset:actor/bicycle/**
    #declare tag Asset.Actor.Bicycle
    #declare tag Asset.Actor.Bicycle.Entity.Root
    #declare tag Asset.Actor.Bicycle.Entity.BicycleBone
    #declare tag Asset.Actor.Bicycle.Entity.Vehicle
    #declare tag Asset.Actor.Bicycle.Entity.VehicleOrigin
    #declare tag Asset.Actor.Bicycle.Entity.BoundingBox
    #declare tag Asset.Actor.Bicycle.Entity.BoundingBoxOrigin
    #declare tag Asset.Actor.Bicycle.Entity.Collider
    #declare tag Asset.Actor.Bicycle.Entity.Collider.Front
    #declare tag Asset.Actor.Bicycle.Entity.Collider.Back
    #declare tag Asset.Actor.Bicycle.Entity.PlayerSkin
    #declare tag Asset.Actor.Bicycle.Flag.Initialized
    #declare tag Asset.Actor.Bicycle.Flag.Initialized2
    #declare tag Asset.Actor.Bicycle.Flag.Initialized3
    #declare tag Asset.Actor.Bicycle.Flag.Riding
    #declare tag Asset.Actor.Bicycle.Flag.OnGround

#>
# @within * asset:actor/bicycle/**
    #declare score_holder #BicycleEntityIndex


#>
# @within * asset:actor/bicycle/**
    #declare function animated_java:bicycle/animations/pause_all
    #declare function animated_java:bicycle/animations/idle/stop
    #declare function animated_java:bicycle/animations/riding/stop
    #declare function animated_java:bicycle/animations/riding/resume
    #declare function animated_java:bicycle/animations/riding_left/resume
    #declare function animated_java:bicycle/animations/riding_right/resume

#>
# @within function
#   asset:actor/bicycle/listener/on_interact/mount/as_bicycle
#   asset:actor/bicycle/method/core/spawn/_
    #declare tag aj.bicycle.bone.head
    #declare tag aj.bicycle.bone.torso
    #declare tag aj.bicycle.bone.left_arm
    #declare tag aj.bicycle.bone.left_leg
    #declare tag aj.bicycle.bone.right_arm
    #declare tag aj.bicycle.bone.right_leg
