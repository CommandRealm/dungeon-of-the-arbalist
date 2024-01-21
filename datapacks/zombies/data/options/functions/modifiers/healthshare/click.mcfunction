# 37 86 30
summon area_effect_cloud 43.18 86.4 32.87 {Tags:["check_sign","add","check_healthshare"],Duration:20}
summon area_effect_cloud 43.24 86.4 32.87 {Tags:["check_sign","add","check_healthshare"],Duration:20}
summon area_effect_cloud 43.12 86.4 32.87 {Tags:["check_sign","add","check_healthshare"],Duration:20}
summon area_effect_cloud 43.82 86.4 32.87 {Tags:["check_sign","remove","check_healthshare"],Duration:20}
summon area_effect_cloud 43.88 86.4 32.87 {Tags:["check_sign","remove","check_healthshare"],Duration:20}
summon area_effect_cloud 43.76 86.4 32.87 {Tags:["check_sign","remove","check_healthshare"],Duration:20}
execute if score $modifiers settings matches 1 run function options:modifiers/healthshare/raycast
execute if score $modifiers settings matches 0 run function options:modifiers/modifiers_disabled
kill @e[tag=check_sign,type=area_effect_cloud]