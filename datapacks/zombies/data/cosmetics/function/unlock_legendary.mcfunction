execute unless entity @s[tag=punch_15] run summon minecraft:area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","punch_15"],Duration:1}
execute unless entity @s[tag=punch_16] run summon minecraft:area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","punch_16"],Duration:1}
execute unless entity @s[tag=punch_17] run summon minecraft:area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","punch_17"],Duration:1}

execute unless entity @s[tag=armor_11] run summon minecraft:area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","armor_11"],Duration:1}
execute unless entity @s[tag=armor_12] run summon minecraft:area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","armor_12"],Duration:1}
execute unless entity @s[tag=armor_13] run summon minecraft:area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","armor_13"],Duration:1}


tag @e[type=minecraft:area_effect_cloud,tag=cosmetic_unlock,sort=random,limit=1] add selected_unlock
execute if entity @e[type=minecraft:area_effect_cloud,tag=selected_unlock,tag=punch_15] run function cosmetics:punch_15
execute if entity @e[type=minecraft:area_effect_cloud,tag=selected_unlock,tag=punch_16] run function cosmetics:punch_16
execute if entity @e[type=minecraft:area_effect_cloud,tag=selected_unlock,tag=punch_17] run function cosmetics:punch_17

execute if entity @e[type=minecraft:area_effect_cloud,tag=selected_unlock,tag=armor_11] run function cosmetics:armor_11
execute if entity @e[type=minecraft:area_effect_cloud,tag=selected_unlock,tag=armor_12] run function cosmetics:armor_12
execute if entity @e[type=minecraft:area_effect_cloud,tag=selected_unlock,tag=armor_13] run function cosmetics:armor_13

playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.20 1.6
kill @e[type=minecraft:area_effect_cloud,tag=cosmetic_unlock]
return 1