#> asset:actor/declare
# @private

#>
# @within * asset:actor/*/**
    #declare tag/entity_type animated_java:root
    #declare tag/entity_type animated_java:bone
    #declare tag/entity_type animated_java:locator_origin

#>
# @within * asset:actor/**
    #declare storage asset:actor

#>
# @within tag/function asset:*
    #declare tag/function asset:actor/on_attack
    #declare tag/function asset:actor/on_interact
    #declare tag/function asset:actor/on_load_once
    #declare tag/function asset:actor/on_tick
