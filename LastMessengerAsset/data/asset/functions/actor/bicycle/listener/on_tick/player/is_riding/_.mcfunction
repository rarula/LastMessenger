#> asset:actor/bicycle/listener/on_tick/player/is_riding/_
#
# 自転車に乗っていればtrue、それ以外の場合はfalse
#
# @within function asset:actor/bicycle/listener/on_tick/player/_

execute on vehicle if entity @s[tag=Asset.Actor.Bicycle] run return 1
return 0
