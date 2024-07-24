#> asset:actor/bicycle/method/core/destroy/_
# @within function asset:actor/bicycle/method/destroy

#>
# @private
    #declare function animated_java:bicycle/remove/this

# 削除
    execute if entity @s[tag=Asset.Actor.Bicycle.Entity.Root] run function animated_java:bicycle/remove/this
