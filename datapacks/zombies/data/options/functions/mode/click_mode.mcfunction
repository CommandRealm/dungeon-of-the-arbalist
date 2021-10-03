summon area_effect_cloud -8.87 90.4 28.18 {Tags:["check_sign","add","check_mode"],Duration:20}
summon area_effect_cloud -8.87 90.4 28.24 {Tags:["check_sign","add","check_mode"],Duration:20}
summon area_effect_cloud -8.87 90.4 28.12 {Tags:["check_sign","add","check_mode"],Duration:20}
summon area_effect_cloud -8.87 90.4 28.82 {Tags:["check_sign","remove","check_mode"],Duration:20}
summon area_effect_cloud -8.87 90.4 28.88 {Tags:["check_sign","remove","check_mode"],Duration:20}
summon area_effect_cloud -8.87 90.4 28.76 {Tags:["check_sign","remove","check_mode"],Duration:20}
function options:mode/raycast
kill @e[tag=check_sign,type=area_effect_cloud]