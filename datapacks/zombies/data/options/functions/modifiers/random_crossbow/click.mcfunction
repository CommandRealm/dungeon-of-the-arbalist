# 37 86 30
summon area_effect_cloud 39.18 86.4 32.87 {Tags:["check_sign","add","check_random_crossbow"],Duration:20}
summon area_effect_cloud 39.24 86.4 32.87 {Tags:["check_sign","add","check_random_crossbow"],Duration:20}
summon area_effect_cloud 39.12 86.4 32.87 {Tags:["check_sign","add","check_random_crossbow"],Duration:20}
summon area_effect_cloud 39.82 86.4 32.87 {Tags:["check_sign","remove","check_random_crossbow"],Duration:20}
summon area_effect_cloud 39.88 86.4 32.87 {Tags:["check_sign","remove","check_random_crossbow"],Duration:20}
summon area_effect_cloud 39.76 86.4 32.87 {Tags:["check_sign","remove","check_random_crossbow"],Duration:20}
execute if score $modifiers settings matches 1 run function options:modifiers/random_crossbow/raycast
execute if score $modifiers settings matches 0 run function options:modifiers/modifiers_disabled
kill @e[tag=check_sign,type=area_effect_cloud]