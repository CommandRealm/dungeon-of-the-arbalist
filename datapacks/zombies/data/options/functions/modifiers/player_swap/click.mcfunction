# 37 86 30
summon area_effect_cloud 45.18 86.4 32.87 {Tags:["check_sign","add","check_player_swap"],Duration:20}
summon area_effect_cloud 45.24 86.4 32.87 {Tags:["check_sign","add","check_player_swap"],Duration:20}
summon area_effect_cloud 45.12 86.4 32.87 {Tags:["check_sign","add","check_player_swap"],Duration:20}
summon area_effect_cloud 45.82 86.4 32.87 {Tags:["check_sign","remove","check_player_swap"],Duration:20}
summon area_effect_cloud 45.88 86.4 32.87 {Tags:["check_sign","remove","check_player_swap"],Duration:20}
summon area_effect_cloud 45.76 86.4 32.87 {Tags:["check_sign","remove","check_player_swap"],Duration:20}
execute if score $modifiers settings matches 1 run function options:modifiers/player_swap/raycast
execute if score $modifiers settings matches 0 run function options:modifiers/modifiers_disabled
kill @e[tag=check_sign,type=area_effect_cloud]