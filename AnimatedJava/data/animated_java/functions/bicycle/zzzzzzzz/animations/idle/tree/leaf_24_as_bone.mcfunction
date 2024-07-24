execute if entity @s[tag=aj.bicycle.bone.wheel_front] run data modify entity @s {} merge value {transformation:[-1f,5.99903913064743e-32f,1.2246467991473532e-16f,-1.0539463434312015e-16f,0f,1f,-4.898587196589413e-16f,0.48258625f,-1.2246467991473532e-16f,-4.898587196589413e-16f,-1f,0.8606125f,0f,0f,0f,1f],start_interpolation:0}
execute if entity @s[tag=aj.bicycle.bone.wheel_back] run data modify entity @s {} merge value {transformation:[-1f,5.99903913064743e-32f,1.2246467991473532e-16f,-0.004511874999999904f,0f,1f,-4.898587196589413e-16f,0.4826175f,-1.2246467991473532e-16f,-4.898587196589413e-16f,-1f,-0.78406625f,0f,0f,0f,1f],start_interpolation:0}
execute if entity @s[tag=aj.bicycle.bone.chain_ring] run data modify entity @s {} merge value {transformation:[-1f,2.999519565323715e-32f,1.2246467991473532e-16f,-0.126101875f,0f,1f,-2.4492935982947064e-16f,0.421875f,-1.2246467991473532e-16f,-2.4492935982947064e-16f,-1f,-0.08120750000000003f,0f,0f,0f,1f],start_interpolation:0}
execute if entity @s[tag=aj.bicycle.bone.pedal_left] run data modify entity @s {} merge value {transformation:[-1f,0f,1.2246467991473532e-16f,0.239421875f,0f,1f,0f,0.668515625f,-1.2246467991473532e-16f,0f,-1f,-0.08011375000000003f,0f,0f,0f,1f],start_interpolation:0}
execute if entity @s[tag=aj.bicycle.bone.pedal_right] run data modify entity @s {} merge value {transformation:[-1f,0f,1.2246467991473532e-16f,-0.239421875f,0f,1f,0f,0.175234375f,-1.2246467991473532e-16f,0f,-1f,-0.08230124999999998f,0f,0f,0f,1f],start_interpolation:0}
execute if entity @s[tag=aj.bicycle.bone.crank_arm] run data modify entity @s {} merge value {transformation:[-1f,2.999519565323715e-32f,1.2246467991473532e-16f,9.945050494175869e-18f,0f,1f,-2.4492935982947064e-16f,0.421875f,-1.2246467991473532e-16f,-2.4492935982947064e-16f,-1f,-0.0812075f,0f,0f,0f,1f],start_interpolation:0}
execute if entity @s[tag=aj.bicycle.locator_origin.vehicle] at @s on origin run tp @s ^0 ^1.03125 ^0.27817 ~0 ~0
execute if entity @s[tag=aj.bicycle.locator_origin.bounding_box_0] at @s on origin run tp @s ^0 ^0 ^-0.74996 ~0 ~0
execute if entity @s[tag=aj.bicycle.locator_origin.bounding_box_1] at @s on origin run tp @s ^0 ^0 ^0.00004 ~0 ~0
execute if entity @s[tag=aj.bicycle.locator_origin.bounding_box_2] at @s on origin run tp @s ^0 ^0 ^0.81254 ~0 ~0