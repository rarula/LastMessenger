#> wasd:declare
# @private

#>
# @public
    #declare tag WASD.W
    #declare tag WASD.A
    #declare tag WASD.S
    #declare tag WASD.D

#>
# @public
    #declare predicate wasd:is_mounted
    #declare predicate wasd:is_walking


#>
# @within * wasd:**
    #declare storage wasd:temp

#>
# @within * wasd:**
    #declare objective WASD
    #declare objective WASD.X
    #declare objective WASD.Z

#>
# @within * wasd:**
    #declare score_holder $-46496
    #declare score_holder $-1
    #declare score_holder $360
    #declare score_holder $57295
    #declare score_holder $1000
    #declare score_holder $10000
    #declare score_holder $100000
    #declare score_holder $1000000

#>
# @within function wasd:core/**
    #declare score_holder $x
    #declare score_holder $z
