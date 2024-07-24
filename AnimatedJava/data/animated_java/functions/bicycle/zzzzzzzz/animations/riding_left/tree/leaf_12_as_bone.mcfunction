execute if entity @s[tag=aj.bicycle.bone.wheel_front] run data modify entity @s {} merge value {transformation:[-0.984807753012208f,-4.25315369915154e-17f,-0.17364817766693022f,0.03683707322959626f,0f,1f,-2.4492935982947064e-16f,0.48258625f,0.17364817766693022f,-2.412083325003795e-16f,-0.984807753012208f,0.857389673694936f,0f,0f,0f,1f],start_interpolation:0}
execute if entity @s[tag=aj.bicycle.bone.wheel_back] run data modify entity @s {} merge value {transformation:[-1f,2.999519565323715e-32f,1.2246467991473532e-16f,-0.004511874999999904f,0f,1f,-2.4492935982947064e-16f,0.4826175f,-1.2246467991473532e-16f,-2.4492935982947064e-16f,-1f,-0.78406625f,0f,0f,0f,1f],start_interpolation:0}
execute if entity @s[tag=aj.bicycle.bone.chain_ring] run data modify entity @s {} merge value {transformation:[-1f,-1.4997597826618576e-32f,-1.2246467991473532e-16f,-0.126101875f,0f,-1f,1.2246467991473532e-16f,0.421875f,-1.2246467991473532e-16f,1.2246467991473532e-16f,1f,-0.08120750000000003f,0f,0f,0f,1f],start_interpolation:0}
execute if entity @s[tag=aj.bicycle.bone.pedal_left] run data modify entity @s {} merge value {transformation:[-1f,0f,1.2246467991473532e-16f,0.239421875f,0f,1f,0f,0.17523437500000005f,-1.2246467991473532e-16f,0f,-1f,-0.08230124999999995f,0f,0f,0f,1f],start_interpolation:0}
execute if entity @s[tag=aj.bicycle.bone.pedal_right] run data modify entity @s {} merge value {transformation:[-1f,0f,1.2246467991473532e-16f,-0.239421875f,0f,1f,0f,0.668515625f,-1.2246467991473532e-16f,0f,-1f,-0.08011375000000005f,0f,0f,0f,1f],start_interpolation:0}
execute if entity @s[tag=aj.bicycle.bone.crank_arm] run data modify entity @s {} merge value {transformation:[-1f,-1.4997597826618576e-32f,-1.2246467991473532e-16f,9.945050494175869e-18f,0f,-1f,1.2246467991473532e-16f,0.421875f,-1.2246467991473532e-16f,1.2246467991473532e-16f,1f,-0.0812075f,0f,0f,0f,1f],start_interpolation:0}
execute if entity @s[tag=aj.bicycle.locator_origin.vehicle] at @s on origin run tp @s ^0 ^1.03125 ^0.27817 ~0 ~0
execute if entity @s[tag=aj.bicycle.locator_origin.bounding_box_0] at @s on origin run tp @s ^0 ^0 ^-0.74996 ~0 ~0
execute if entity @s[tag=aj.bicycle.locator_origin.bounding_box_1] at @s on origin run tp @s ^0 ^0 ^0.00004 ~0 ~0
execute if entity @s[tag=aj.bicycle.locator_origin.bounding_box_2] at @s on origin run tp @s ^0 ^0 ^0.81254 ~0 ~0
execute if entity @s[tag=aj.bicycle.bone.head] run data modify entity @s {} merge value {transformation:[-0.984807753012208f,0.0f,-0.17364817766693022f,3.827021247335479e-18f,0.0f,1.0f,0.0f,1.625f,0.17364817766693022f,0.0f,-0.984807753012208f,-0.03125f,0.0f,0.0f,0.0f,1.0f],start_interpolation:0}
execute if entity @s[tag=aj.bicycle.bone.right_arm] run data modify entity @s {} merge value {transformation:[-0.984807753012208f,-0.17364817766693022f,-2.7755575615628873e-17f,3.827021247335479e-18f,0.0f,3.3306690738754696e-16f,-0.9999999999999998f,-1022.5f,0.17364817766693022f,-0.9848077530122079f,-3.3306690738754696e-16f,-0.03125f,0.0f,0.0f,0.0f,1.0f],start_interpolation:0}
execute if entity @s[tag=aj.bicycle.bone.left_arm] run data modify entity @s {} merge value {transformation:[-0.984807753012208f,0.17364817766693044f,2.7755575615628957e-17f,3.827021247335479e-18f,0.0f,3.3306690738754696e-16f,-0.9999999999999998f,-2046.5f,-0.17364817766693044f,-0.9848077530122079f,-3.3306690738754696e-16f,-0.03125f,0.0f,0.0f,0.0f,1.0f],start_interpolation:0}
execute if entity @s[tag=aj.bicycle.bone.torso] run data modify entity @s {} merge value {transformation:[-1.0f,-3.580520723499547e-17f,1.1711355583995222e-16f,3.827021247335479e-18f,0.0f,0.9563047559630354f,0.29237170472273677f,-3070.375f,-1.2246467991473532e-16f,0.29237170472273677f,-0.9563047559630354f,-0.03125f,0.0f,0.0f,0.0f,1.0f],start_interpolation:0}
execute if entity @s[tag=aj.bicycle.bone.right_leg] run data modify entity @s {} merge value {transformation:[-0.99f,0.0f,1.2124003311558797e-16f,1.1481063742006436e-17f,0.0f,0.99f,0.0f,-4094.5625f,-1.2124003311558797e-16f,0.0f,-0.99f,-0.09375f,0.0f,0.0f,0.0f,1.0f],start_interpolation:0}
execute if entity @s[tag=aj.bicycle.bone.left_leg] run data modify entity @s {} merge value {transformation:[-0.99f,2.1053110810800137e-17f,1.193981245876879e-16f,1.9135106236677395e-17f,0.0f,0.974959675482086f,-0.17191169589026103f,-5119.0625f,-1.2124003311558797e-16f,-0.17191169589026103f,-0.974959675482086f,-0.15625f,0.0f,0.0f,0.0f,1.0f],start_interpolation:0}
