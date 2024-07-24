#> asset:actor/bicycle/listener/on_tick/player/riding/play_animation/riding_left
# @within function asset:actor/bicycle/listener/on_tick/player/riding/_

#>
# @private
    #declare objective aj.bicycle.animation.riding_left.local_anim_time
    #declare objective aj.bicycle.animation.riding_left.loop_mode

#>
# @private
    #declare tag aj.bicycle.animation.riding_left

scoreboard players operation @s aj.bicycle.animation.riding_left.local_anim_time = #Frame Temp
scoreboard players set @s aj.bicycle.animation.riding_left.loop_mode 0

tag @s add aj.bicycle.animation.riding_left
