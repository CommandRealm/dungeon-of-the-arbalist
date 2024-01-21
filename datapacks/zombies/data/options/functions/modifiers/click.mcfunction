# 37 86 30
summon area_effect_cloud -7.18 90.4 22.13 {Tags:["check_sign","add","check_modifiers"],Duration:20}
summon area_effect_cloud -7.24 90.4 22.13 {Tags:["check_sign","add","check_modifiers"],Duration:20}
summon area_effect_cloud -7.12 90.4 22.13 {Tags:["check_sign","add","check_modifiers"],Duration:20}
summon area_effect_cloud -7.82 90.4 22.13 {Tags:["check_sign","remove","check_modifiers"],Duration:20}
summon area_effect_cloud -7.88 90.4 22.13 {Tags:["check_sign","remove","check_modifiers"],Duration:20}
summon area_effect_cloud -7.76 90.4 22.13 {Tags:["check_sign","remove","check_modifiers"],Duration:20}
function options:modifiers/raycast
kill @e[tag=check_sign,type=area_effect_cloud]