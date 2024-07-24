#> wasd:core/input/atan2
# @within function wasd:core/input/calc_range

## Remez Algorithm
# a := min (|x|, |y|) / max (|x|, |y|)
# s := a * a
# r := ((-0.0464964749 * s + 0.15931422) * s - 0.327622764) * s * a + a
# if |y| > |x| then r := 1.57079637 - r
# if x < 0 then r := 3.14159274 - r
# if y < 0 then r := -r

#>
# @private
    #declare score_holder $Temp0
    #declare score_holder $Temp1
    #declare score_holder $Temp2
    #declare score_holder $Temp3

## a
scoreboard players operation $Temp0 WASD = $in WASD
scoreboard players operation $Temp1 WASD = $in1 WASD
execute if score $Temp0 WASD matches ..-1 run scoreboard players operation $Temp0 WASD *= $-1 WASD
execute if score $Temp1 WASD matches ..-1 run scoreboard players operation $Temp1 WASD *= $-1 WASD
scoreboard players operation $Temp2 WASD = $Temp0 WASD
scoreboard players operation $Temp2 WASD < $Temp1 WASD
scoreboard players operation $Temp3 WASD = $Temp0 WASD
scoreboard players operation $Temp3 WASD > $Temp1 WASD
scoreboard players operation $Temp2 WASD *= $1000 WASD
scoreboard players operation $Temp2 WASD /= $Temp3 WASD

## s
scoreboard players operation $Temp3 WASD = $Temp2 WASD
scoreboard players operation $Temp3 WASD *= $Temp3 WASD
scoreboard players operation $Temp3 WASD /= $1000 WASD

## r
scoreboard players operation $out WASD = $Temp3 WASD
scoreboard players operation $out WASD *= $-46496 WASD
scoreboard players operation $out WASD /= $100000 WASD
scoreboard players add $out WASD 1593
scoreboard players operation $out WASD *= $Temp3 WASD
scoreboard players operation $out WASD /= $1000 WASD
scoreboard players remove $out WASD 3276
scoreboard players operation $out WASD *= $Temp3 WASD
scoreboard players operation $out WASD /= $1000 WASD
scoreboard players operation $out WASD *= $Temp2 WASD
scoreboard players operation $out WASD /= $10000 WASD
scoreboard players operation $out WASD += $Temp2 WASD
execute if score $Temp1 WASD > $Temp0 WASD run scoreboard players remove $out WASD 1570
execute if score $Temp1 WASD > $Temp0 WASD run scoreboard players operation $out WASD *= $-1 WASD
execute if score $in WASD matches ..-1 run scoreboard players remove $out WASD 3141
execute if score $in WASD matches ..-1 run scoreboard players operation $out WASD *= $-1 WASD
execute if score $in1 WASD matches ..-1 run scoreboard players operation $out WASD *= $-1 WASD

## rad 2 deg
scoreboard players operation $out WASD *= $57295 WASD
scoreboard players operation $out WASD /= $1000000 WASD

scoreboard players reset $Temp0 WASD
scoreboard players reset $Temp1 WASD
scoreboard players reset $Temp2 WASD
scoreboard players reset $Temp3 WASD
