execute if entity @s[tag=aj.bicycle.bone.wheel_front] run data modify entity @s {} merge value {transformation:[-1f,6.123233995736769e-17f,-1.0605752387249072e-16f,-1.0539463434312015e-16f,0f,-0.8660254037844388f,-0.5000000000000002f,0.48258625f,-1.2246467991473532e-16f,-0.5000000000000002f,0.8660254037844388f,0.8606125f,0f,0f,0f,1f],start_interpolation:0}
execute if entity @s[tag=aj.bicycle.bone.wheel_back] run data modify entity @s {} merge value {transformation:[-1f,6.123233995736769e-17f,-1.0605752387249072e-16f,-0.004511874999999904f,0f,-0.8660254037844388f,-0.5000000000000002f,0.4826175f,-1.2246467991473532e-16f,-0.5000000000000002f,0.8660254037844388f,-0.78406625f,0f,0f,0f,1f],start_interpolation:0}
execute if entity @s[tag=aj.bicycle.bone.chain_ring] run data modify entity @s {} merge value {transformation:[-1f,-1.1829179713786698e-16f,-3.169619151431765e-17f,-0.126101875f,0f,-0.25881904510252074f,0.9659258262890683f,0.421875f,-1.2246467991473532e-16f,0.9659258262890683f,0.25881904510252074f,-0.08120750000000003f,0f,0f,0f,1f],start_interpolation:0}
execute if entity @s[tag=aj.bicycle.bone.pedal_left] run data modify entity @s {} merge value {transformation:[-1f,0f,1.2246467991473532e-16f,0.23942187499999998f,0f,1f,0f,0.3569832275815074f,-1.2246467991473532e-16f,0f,-1f,0.15674596616899633f,0f,0f,0f,1f],start_interpolation:0}
execute if entity @s[tag=aj.bicycle.bone.pedal_right] run data modify entity @s {} merge value {transformation:[-1f,0f,1.2246467991473532e-16f,-0.23942187499999998f,0f,1f,0f,0.4867667724184926f,-1.2246467991473532e-16f,0f,-1f,-0.31916096616899636f,0f,0f,0f,1f],start_interpolation:0}
execute if entity @s[tag=aj.bicycle.bone.crank_arm] run data modify entity @s {} merge value {transformation:[-1f,-1.1829179713786698e-16f,-3.169619151431765e-17f,9.945050494175869e-18f,0f,-0.25881904510252074f,0.9659258262890683f,0.421875f,-1.2246467991473532e-16f,0.9659258262890683f,0.25881904510252074f,-0.0812075f,0f,0f,0f,1f],start_interpolation:0}
execute if entity @s[tag=aj.bicycle.locator_origin.vehicle] at @s on origin run tp @s ^0 ^1.03125 ^0.27817 ~0 ~0
execute if entity @s[tag=aj.bicycle.locator_origin.bounding_box_0] at @s on origin run tp @s ^0 ^0 ^-0.74996 ~0 ~0
execute if entity @s[tag=aj.bicycle.locator_origin.bounding_box_1] at @s on origin run tp @s ^0 ^0 ^0.00004 ~0 ~0
execute if entity @s[tag=aj.bicycle.locator_origin.bounding_box_2] at @s on origin run tp @s ^0 ^0 ^0.81254 ~0 ~0