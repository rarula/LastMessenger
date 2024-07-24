execute if entity @s[tag=aj.bicycle.bone.wheel_front] run data modify entity @s {} merge value {transformation:[-0.984807753012208f,0.17364817766693047f,5.205281535810704e-16f,-0.03683707322959645f,0f,2.9976021664879227e-15f,-1.0000000000000002f,0.48258625f,-0.17364817766693044f,-0.9848077530122082f,-2.9520618540034976e-15f,0.857389673694936f,0f,0f,0f,1f],start_interpolation:0}
execute if entity @s[tag=aj.bicycle.bone.wheel_back] run data modify entity @s {} merge value {transformation:[-1f,1.2246467991473535e-16f,3.671003898306606e-31f,-0.004511874999999904f,0f,2.9976021664879227e-15f,-1.0000000000000002f,0.4826175f,-1.2246467991473532e-16f,-1.0000000000000002f,-2.9976021664879227e-15f,-0.78406625f,0f,0f,0f,1f],start_interpolation:0}
execute if entity @s[tag=aj.bicycle.bone.chain_ring] run data modify entity @s {} merge value {transformation:[-1f,8.65956056235492e-17f,8.659560562354946e-17f,-0.126101875f,0f,0.7071067811865486f,-0.7071067811865465f,0.421875f,-1.2246467991473532e-16f,-0.7071067811865465f,-0.7071067811865486f,-0.08120750000000003f,0f,0f,0f,1f],start_interpolation:0}
execute if entity @s[tag=aj.bicycle.bone.pedal_left] run data modify entity @s {} merge value {transformation:[-1f,0f,1.2246467991473532e-16f,0.23942187500000003f,0f,1f,0f,0.5970496564955113f,-1.2246467991473532e-16f,0f,-1f,-0.2548353604116652f,0f,0f,0f,1f],start_interpolation:0}
execute if entity @s[tag=aj.bicycle.bone.pedal_right] run data modify entity @s {} merge value {transformation:[-1f,0f,1.2246467991473532e-16f,-0.23942187500000003f,0f,1f,0f,0.24670034350448863f,-1.2246467991473532e-16f,0f,-1f,0.09242036041166525f,0f,0f,0f,1f],start_interpolation:0}
execute if entity @s[tag=aj.bicycle.bone.crank_arm] run data modify entity @s {} merge value {transformation:[-1f,8.65956056235492e-17f,8.659560562354946e-17f,9.945050494175869e-18f,0f,0.7071067811865486f,-0.7071067811865465f,0.421875f,-1.2246467991473532e-16f,-0.7071067811865465f,-0.7071067811865486f,-0.0812075f,0f,0f,0f,1f],start_interpolation:0}
execute if entity @s[tag=aj.bicycle.locator_origin.vehicle] at @s on origin run tp @s ^0 ^1.03125 ^0.27817 ~0 ~0
execute if entity @s[tag=aj.bicycle.locator_origin.bounding_box_0] at @s on origin run tp @s ^0 ^0 ^-0.74996 ~0 ~0
execute if entity @s[tag=aj.bicycle.locator_origin.bounding_box_1] at @s on origin run tp @s ^0 ^0 ^0.00004 ~0 ~0
execute if entity @s[tag=aj.bicycle.locator_origin.bounding_box_2] at @s on origin run tp @s ^0 ^0 ^0.81254 ~0 ~0
execute if entity @s[tag=aj.bicycle.bone.head] run data modify entity @s {} merge value {transformation:[-0.984807753012208f,0.0f,0.17364817766693044f,3.827021247335479e-18f,0.0f,1.0f,0.0f,1.679125f,-0.17364817766693044f,0.0f,-0.984807753012208f,-0.03125f,0.0f,0.0f,0.0f,1.0f],start_interpolation:0}
execute if entity @s[tag=aj.bicycle.bone.right_arm] run data modify entity @s {} merge value {transformation:[-0.984807753012208f,-0.17298739392508933f,-0.015134435901338648f,3.827021247335479e-18f,0.0f,0.08715574274765858f,-0.9961946980917453f,-1022.445875f,0.1736481776669302f,-0.9810602621904068f,-0.08583165117743163f,-0.03125f,0.0f,0.0f,0.0f,1.0f],start_interpolation:0}
execute if entity @s[tag=aj.bicycle.bone.left_arm] run data modify entity @s {} merge value {transformation:[-0.984807753012208f,0.17298739392508955f,0.015134435901338669f,3.827021247335479e-18f,0.0f,0.08715574274765858f,-0.9961946980917453f,-2046.445875f,-0.17364817766693041f,-0.9810602621904068f,-0.08583165117743163f,-0.03125f,0.0f,0.0f,0.0f,1.0f],start_interpolation:0}
execute if entity @s[tag=aj.bicycle.bone.torso] run data modify entity @s {} merge value {transformation:[-1.0f,-3.580520723499547e-17f,1.1711355583995222e-16f,3.827021247335479e-18f,0.0f,0.9563047559630354f,0.29237170472273677f,-3070.320875f,-1.2246467991473532e-16f,0.29237170472273677f,-0.9563047559630354f,-0.03125f,0.0f,0.0f,0.0f,1.0f],start_interpolation:0}
execute if entity @s[tag=aj.bicycle.bone.right_leg] run data modify entity @s {} merge value {transformation:[-0.99f,3.137922959917447e-17f,1.171088791664883e-16f,1.9135106236677395e-17f,0.0f,0.9562665680261776f,-0.25623085465149553f,-4094.977375f,-1.2124003311558797e-16f,-0.25623085465149553f,-0.9562665680261776f,-0.15625f,0.0f,0.0f,0.0f,1.0f],start_interpolation:0}
execute if entity @s[tag=aj.bicycle.bone.left_leg] run data modify entity @s {} merge value {transformation:[-0.99f,-1.056676513693974e-17f,1.207786781862164e-16f,1.4542680739874818e-17f,0.0f,0.9862327511108281f,0.08628418532018158f,-5118.68975f,-1.2124003311558797e-16f,0.08628418532018158f,-0.9862327511108281f,-0.11874999999999998f,0.0f,0.0f,0.0f,1.0f],start_interpolation:0}
