#> core:load/_
#
# load時に呼び出される
#
# @within tag/function minecraft:load

# 動作環境: "DEV" | "PRODUCTION"
    data modify storage global: EnvironmentType set value "DEV"


## 動作環境: "DEV"
# load時に呼び出す
    execute if data storage global: {EnvironmentType:"DEV"} run function core:load/once

## 動作環境: "PRODUCTION"
# 初回load時に呼び出す
    execute if data storage global: {EnvironmentType:"PRODUCTION"} unless data storage global: Version run function core:load/once
