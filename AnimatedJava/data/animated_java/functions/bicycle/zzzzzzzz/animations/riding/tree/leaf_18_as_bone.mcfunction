execute if entity @s[tag=aj.bicycle.bone.wheel_front] run data modify entity @s {} merge value {transformation:[-1f,-4.499279347985573e-32f,-1.2246467991473532e-16f,-1.0539463434312015e-16f,0f,-1f,3.6739403974420594e-16f,0.48258625f,-1.2246467991473532e-16f,3.6739403974420594e-16f,1f,0.8606125f,0f,0f,0f,1f],start_interpolation:0}
execute if entity @s[tag=aj.bicycle.bone.wheel_back] run data modify entity @s {} merge value {transformation:[-1f,-4.499279347985573e-32f,-1.2246467991473532e-16f,-0.004511874999999904f,0f,-1f,3.6739403974420594e-16f,0.4826175f,-1.2246467991473532e-16f,3.6739403974420594e-16f,1f,-0.78406625f,0f,0f,0f,1f],start_interpolation:0}
execute if entity @s[tag=aj.bicycle.bone.chain_ring] run data modify entity @s {} merge value {transformation:[-1f,1.2246467991473532e-16f,-2.719262146893782e-32f,-0.126101875f,0f,-2.220446049250313e-16f,-1f,0.421875f,-1.2246467991473532e-16f,-1f,2.220446049250313e-16f,-0.08120750000000003f,0f,0f,0f,1f],start_interpolation:0}
execute if entity @s[tag=aj.bicycle.bone.pedal_left] run data modify entity @s {} merge value {transformation:[-1f,0f,1.2246467991473532e-16f,0.23942187500000003f,0f,1f,0f,0.42296874999999995f,-1.2246467991473532e-16f,0f,-1f,-0.32784812499999993f,0f,0f,0f,1f],start_interpolation:0}
execute if entity @s[tag=aj.bicycle.bone.pedal_right] run data modify entity @s {} merge value {transformation:[-1f,0f,1.2246467991473532e-16f,-0.23942187500000003f,0f,1f,0f,0.42078125000000005f,-1.2246467991473532e-16f,0f,-1f,0.16543312499999996f,0f,0f,0f,1f],start_interpolation:0}
execute if entity @s[tag=aj.bicycle.bone.crank_arm] run data modify entity @s {} merge value {transformation:[-1f,1.2246467991473532e-16f,-2.719262146893782e-32f,9.945050494175869e-18f,0f,-2.220446049250313e-16f,-1f,0.421875f,-1.2246467991473532e-16f,-1f,2.220446049250313e-16f,-0.0812075f,0f,0f,0f,1f],start_interpolation:0}
execute if entity @s[tag=aj.bicycle.locator_origin.vehicle] at @s on origin run tp @s ^0 ^1.03125 ^0.27817 ~0 ~0
execute if entity @s[tag=aj.bicycle.locator_origin.bounding_box_0] at @s on origin run tp @s ^0 ^0 ^-0.74996 ~0 ~0
execute if entity @s[tag=aj.bicycle.locator_origin.bounding_box_1] at @s on origin run tp @s ^0 ^0 ^0.00004 ~0 ~0
execute if entity @s[tag=aj.bicycle.locator_origin.bounding_box_2] at @s on origin run tp @s ^0 ^0 ^0.81254 ~0 ~0
execute if entity @s[tag=aj.bicycle.bone.head] run data modify entity @s {} merge value {transformation:[-1.0f,0.0f,1.2246467991473532e-16f,3.827021247335479e-18f,0.0f,1.0f,0.0f,1.75f,-1.2246467991473532e-16f,0.0f,-1.0f,-0.03125f,0.0f,0.0f,0.0f,1.0f],start_interpolation:0}
execute if entity @s[tag=aj.bicycle.bone.right_arm] run data modify entity @s {} merge value {transformation:[-0.984807753012208f,-0.17101007166283422f,-0.030153689607045807f,3.827021247335479e-18f,0.0f,0.17364817766693041f,-0.984807753012208f,-1022.375f,0.1736481776669302f,-0.9698463103929541f,-0.17101007166283444f,-0.03125f,0.0f,0.0f,0.0f,1.0f],start_interpolation:0}
execute if entity @s[tag=aj.bicycle.bone.left_arm] run data modify entity @s {} merge value {transformation:[-0.984807753012208f,0.17101007166283444f,0.03015368960704585f,3.827021247335479e-18f,0.0f,0.17364817766693041f,-0.984807753012208f,-2046.375f,-0.17364817766693041f,-0.9698463103929541f,-0.17101007166283444f,-0.03125f,0.0f,0.0f,0.0f,1.0f],start_interpolation:0}
execute if entity @s[tag=aj.bicycle.bone.torso] run data modify entity @s {} merge value {transformation:[-1.0f,-3.580520723499547e-17f,1.1711355583995222e-16f,3.827021247335479e-18f,0.0f,0.9563047559630354f,0.29237170472273677f,-3070.25f,-1.2246467991473532e-16f,0.29237170472273677f,-0.9563047559630354f,-0.03125f,0.0f,0.0f,0.0f,1.0f],start_interpolation:0}
execute if entity @s[tag=aj.bicycle.bone.right_leg] run data modify entity @s {} merge value {transformation:[-0.99f,4.1466533503002215e-17f,1.1392836446255718e-16f,1.9135106236677395e-17f,0.0f,0.9302956945780493f,-0.338599941892412f,-4094.854375f,-1.2124003311558797e-16f,-0.338599941892412f,-0.9302956945780493f,-0.15625f,0.0f,0.0f,0.0f,1.0f],start_interpolation:0}
execute if entity @s[tag=aj.bicycle.bone.left_leg] run data modify entity @s {} merge value {transformation:[-0.99f,-2.1053110810800137e-17f,1.193981245876879e-16f,1.9135106236677395e-17f,0.0f,0.974959675482086f,0.17191169589026103f,-5118.854375f,-1.2124003311558797e-16f,0.17191169589026103f,-0.974959675482086f,-0.15625f,0.0f,0.0f,0.0f,1.0f],start_interpolation:0}
