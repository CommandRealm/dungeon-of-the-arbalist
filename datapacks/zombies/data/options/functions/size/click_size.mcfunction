summon area_effect_cloud -8.87 90.4 24.18 {Tags:["check_sign","add","check_size"],Duration:20}
summon area_effect_cloud -8.87 90.4 24.24 {Tags:["check_sign","add","check_size"],Duration:20}
summon area_effect_cloud -8.87 90.4 24.12 {Tags:["check_sign","add","check_size"],Duration:20}
summon area_effect_cloud -8.87 90.4 24.82 {Tags:["check_sign","remove","check_size"],Duration:20}
summon area_effect_cloud -8.87 90.4 24.88 {Tags:["check_sign","remove","check_size"],Duration:20}
summon area_effect_cloud -8.87 90.4 24.76 {Tags:["check_sign","remove","check_size"],Duration:20}
function options:size/raycast
kill @e[tag=check_sign,type=area_effect_cloud]