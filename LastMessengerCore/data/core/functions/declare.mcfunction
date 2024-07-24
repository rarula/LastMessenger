#> core:declare
# @private

#>
# @public
    #alias vector ShulkerBox 0 -64 0

#>
# @public
    #declare storage global:

#>
# @public
    #declare score_holder #Gametime

#> スリムスキンである状態
# @public
    #declare tag GlobalPlayerTag.isSlim

#> 攻撃者/被害者
# @public
    #declare tag CoreEntityFlag.AttackingPlayer
    #declare tag CoreEntityFlag.AttackedEntity

#> 作用者/被作用者
# @public
    #declare tag CoreEntityFlag.InteractingPlayer
    #declare tag CoreEntityFlag.InteractedEntity


#>
# @within * core:**
    #declare storage core:temp

#>
# @within * core:**
    #declare advancement core:player_hurt_entity
    #declare advancement core:player_interacted_with_entity


#>
# @within function
#   core:load/init_score/global
#   core:handler/on_first_join/_
    #declare score_holder #PlayerIndex

#>
# @within function
#   core:load/init_score/global
#   entity_finder:init/_
    #declare score_holder #EntityIndex

#>
# @within function
#   core:load/init_score/global
#   core:handler/on_join/set_skin_model_flag/_
    #declare score_holder #SkinModelDetectionCoordinatesX
    #declare score_holder #SkinModelDetectionCoordinatesZ
