#> asset:actor/bicycle/listener/on_tick/player/riding/play_animation/riding_right
# @within function asset:actor/bicycle/listener/on_tick/player/riding/_

#>
# @private
    #declare objective aj.bicycle.animation.riding_right.local_anim_time
    #declare objective aj.bicycle.animation.riding_right.loop_mode

#>
# @private
    #declare tag aj.bicycle.animation.riding_right

scoreboard players operation @s aj.bicycle.animation.riding_right.local_anim_time = #Frame Temp
scoreboard players set @s aj.bicycle.animation.riding_right.loop_mode 0

tag @s add aj.bicycle.animation.riding_right
