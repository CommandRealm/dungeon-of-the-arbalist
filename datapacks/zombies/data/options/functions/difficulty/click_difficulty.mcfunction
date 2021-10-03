summon area_effect_cloud -8.87 90.4 26.18 {Tags:["check_sign","add","check_difficulty"],Duration:20}
summon area_effect_cloud -8.87 90.4 26.24 {Tags:["check_sign","add","check_difficulty"],Duration:20}
summon area_effect_cloud -8.87 90.4 26.12 {Tags:["check_sign","add","check_difficulty"],Duration:20}
summon area_effect_cloud -8.87 90.4 26.82 {Tags:["check_sign","remove","check_difficulty"],Duration:20}
summon area_effect_cloud -8.87 90.4 26.88 {Tags:["check_sign","remove","check_difficulty"],Duration:20}
summon area_effect_cloud -8.87 90.4 26.76 {Tags:["check_sign","remove","check_difficulty"],Duration:20}
function options:difficulty/raycast
kill @e[tag=check_sign,type=area_effect_cloud]