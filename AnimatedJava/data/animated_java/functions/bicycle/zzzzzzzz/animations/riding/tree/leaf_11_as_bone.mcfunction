execute if entity @s[tag=aj.bicycle.bone.wheel_front] run data modify entity @s {} merge value {transformation:[-1f,6.123233995736762e-17f,1.0605752387249072e-16f,-1.0539463434312015e-16f,0f,0.8660254037844388f,-0.49999999999999967f,0.48258625f,-1.2246467991473532e-16f,-0.49999999999999967f,-0.8660254037844388f,0.8606125f,0f,0f,0f,1f],start_interpolation:0}
execute if entity @s[tag=aj.bicycle.bone.wheel_back] run data modify entity @s {} merge value {transformation:[-1f,6.123233995736762e-17f,1.0605752387249072e-16f,-0.004511874999999904f,0f,0.8660254037844388f,-0.49999999999999967f,0.4826175f,-1.2246467991473532e-16f,-0.49999999999999967f,-0.8660254037844388f,-0.78406625f,0f,0f,0f,1f],start_interpolation:0}
execute if entity @s[tag=aj.bicycle.bone.chain_ring] run data modify entity @s {} merge value {transformation:[-1f,-3.1696191514317625e-17f,-1.1829179713786696e-16f,-0.126101875f,0f,-0.9659258262890682f,0.2588190451025206f,0.421875f,-1.2246467991473532e-16f,0.2588190451025206f,0.9659258262890682f,-0.08120750000000003f,0f,0f,0f,1f],start_interpolation:0}
execute if entity @s[tag=aj.bicycle.bone.pedal_left] run data modify entity @s {} merge value {transformation:[-1f,0f,1.224646799147353e-16f,0.239421875f,0f,0.9999999999999998f,0f,0.18335536716984197f,-1.2246467991473532e-16f,0f,-0.9999999999999998f,-0.0184286903265148f,0f,0f,0f,1f],start_interpolation:0}
execute if entity @s[tag=aj.bicycle.bone.pedal_right] run data modify entity @s {} merge value {transformation:[-1f,0f,1.224646799147353e-16f,-0.239421875f,0f,0.9999999999999998f,0f,0.6603946328301581f,-1.2246467991473532e-16f,0f,-0.9999999999999998f,-0.14398630967348522f,0f,0f,0f,1f],start_interpolation:0}
execute if entity @s[tag=aj.bicycle.bone.crank_arm] run data modify entity @s {} merge value {transformation:[-1f,-3.1696191514317625e-17f,-1.1829179713786696e-16f,9.945050494175869e-18f,0f,-0.9659258262890682f,0.2588190451025206f,0.421875f,-1.2246467991473532e-16f,0.2588190451025206f,0.9659258262890682f,-0.0812075f,0f,0f,0f,1f],start_interpolation:0}
execute if entity @s[tag=aj.bicycle.locator_origin.vehicle] at @s on origin run tp @s ^0 ^1.03125 ^0.27817 ~0 ~0
execute if entity @s[tag=aj.bicycle.locator_origin.bounding_box_0] at @s on origin run tp @s ^0 ^0 ^-0.74996 ~0 ~0
execute if entity @s[tag=aj.bicycle.locator_origin.bounding_box_1] at @s on origin run tp @s ^0 ^0 ^0.00004 ~0 ~0
execute if entity @s[tag=aj.bicycle.locator_origin.bounding_box_2] at @s on origin run tp @s ^0 ^0 ^0.81254 ~0 ~0
execute if entity @s[tag=aj.bicycle.bone.head] run data modify entity @s {} merge value {transformation:[-1.0f,0.0f,1.2246467991473532e-16f,3.827021247335479e-18f,0.0f,1.0f,0.0f,1.631875f,-1.2246467991473532e-16f,0.0f,-1.0f,-0.03125f,0.0f,0.0f,0.0f,1.0f],start_interpolation:0}
execute if entity @s[tag=aj.bicycle.bone.right_arm] run data modify entity @s {} merge value {transformation:[-0.984807753012208f,-0.1735747158196422f,-0.005050508407696493f,3.827021247335479e-18f,0.0f,0.02908471874311136f,-0.9995769500822006f,-1022.493125f,0.17364817766693022f,-0.9843911301732481f,-0.02864285651239562f,-0.03125f,0.0f,0.0f,0.0f,1.0f],start_interpolation:0}
execute if entity @s[tag=aj.bicycle.bone.left_arm] run data modify entity @s {} merge value {transformation:[-0.984807753012208f,0.17357471581964243f,0.0050505084076965f,3.827021247335479e-18f,0.0f,0.02908471874311136f,-0.9995769500822006f,-2046.493125f,-0.17364817766693044f,-0.9843911301732481f,-0.02864285651239562f,-0.03125f,0.0f,0.0f,0.0f,1.0f],start_interpolation:0}
execute if entity @s[tag=aj.bicycle.bone.torso] run data modify entity @s {} merge value {transformation:[-1.0f,-3.580520723499547e-17f,1.1711355583995222e-16f,3.827021247335479e-18f,0.0f,0.9563047559630354f,0.29237170472273677f,-3070.368125f,-1.2246467991473532e-16f,0.29237170472273677f,-0.9563047559630354f,-0.03125f,0.0f,0.0f,0.0f,1.0f],start_interpolation:0}
execute if entity @s[tag=aj.bicycle.bone.right_leg] run data modify entity @s {} merge value {transformation:[-0.99f,-3.526232263572384e-18f,1.2118874252954443e-16f,1.1481063742006436e-17f,0.0f,0.9895811805813786f,0.02879387155568025f,-4094.58f,-1.2124003311558797e-16f,0.02879387155568025f,-0.9895811805813786f,-0.09375f,0.0f,0.0f,0.0f,1.0f],start_interpolation:0}
execute if entity @s[tag=aj.bicycle.bone.left_leg] run data modify entity @s {} merge value {transformation:[-0.99f,2.4516865166090078e-17f,1.1873528941429596e-16f,1.9135106236677395e-17f,0.0f,0.9695472155478959f,-0.2001953966087175f,-5119.059375f,-1.2124003311558797e-16f,-0.2001953966087175f,-0.9695472155478959f,-0.15625f,0.0f,0.0f,0.0f,1.0f],start_interpolation:0}