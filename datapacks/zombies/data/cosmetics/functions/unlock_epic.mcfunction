execute unless entity @s[tag=punch_10] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","punch_10"],Duration:1}
execute unless entity @s[tag=punch_11] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","punch_11"],Duration:1}
execute unless entity @s[tag=punch_12] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","punch_12"],Duration:1}
execute unless entity @s[tag=punch_13] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","punch_13"],Duration:1}
execute unless entity @s[tag=punch_14] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","punch_14"],Duration:1}

execute unless entity @s[tag=armor_7] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","armor_7"],Duration:1}
execute unless entity @s[tag=armor_8] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","armor_8"],Duration:1}
execute unless entity @s[tag=armor_9] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","armor_9"],Duration:1}
execute unless entity @s[tag=armor_10] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","armor_10"],Duration:1}


tag @e[type=area_effect_cloud,tag=cosmetic_unlock,sort=random,limit=1] add selected_unlock
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=punch_10] run function cosmetics:punch_10
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=punch_11] run function cosmetics:punch_11
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=punch_12] run function cosmetics:punch_12
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=punch_13] run function cosmetics:punch_13
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=punch_14] run function cosmetics:punch_14

execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=armor_7] run function cosmetics:armor_7
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=armor_8] run function cosmetics:armor_8
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=armor_9] run function cosmetics:armor_9
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=armor_10] run function cosmetics:armor_10


playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.20 1.85
kill @e[tag=cosmetic_unlock,type=area_effect_cloud]
