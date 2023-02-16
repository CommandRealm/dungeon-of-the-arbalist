 ##Called when our raycast hits a default door
title @s[tag=!play_alternate_title] title [{"text":""}]
execute if entity @e[type=marker,tag=doorway,distance=..10] if entity @s[x=5007,y=89,z=23,distance=..10] run title @s[tag=!play_alternate_title] subtitle [{"text":"Find the ","color":"gray"},{"text":"Pink Key","color":"light_purple","bold":true},{"text":" to open.","color":"gray"}]

execute if entity @e[type=marker,tag=doorway,distance=..10] if entity @s[x=4984,y=79,z=37,distance=..10] run title @s[tag=!play_alternate_title] subtitle [{"text":"Find the ","color":"gray"},{"text":"Blue Key","color":"blue","bold":true},{"text":" to open.","color":"gray"}]

execute if entity @e[type=marker,tag=doorway,distance=..10] if entity @s[x=3038,y=91,z=20,distance=..10] run title @s[tag=!play_alternate_title] subtitle [{"text":"Find the ","color":"gray"},{"text":"Lookout Key","color":"gold","bold":true},{"text":" to open.","color":"gray"}]

execute if entity @e[type=marker,tag=doorway,distance=..10] if entity @s[x=3160,y=73,z=113,distance=..10] run title @s[tag=!play_alternate_title] subtitle [{"text":"Find the ","color":"gray"},{"text":"Storage Key","color":"gray","bold":true},{"text":" to open.","color":"gray"}]

execute if entity @e[type=marker,tag=doorway,distance=..10] if entity @s[x=3058,y=70,z=109,distance=..10] run title @s[tag=!play_alternate_title] subtitle [{"text":"Find the ","color":"gray"},{"text":"Storage Key","color":"gray","bold":true},{"text":" to open.","color":"gray"}]

execute if entity @e[type=marker,tag=doorway,distance=..10] if entity @s[x=3160,y=72,z=192,distance=..10] run title @s[tag=!play_alternate_title] subtitle [{"text":"Find the ","color":"gray"},{"text":"Crypt Key","color":"red","bold":true},{"text":" to open.","color":"gray"}]


##temporary tag so we know we hit something
tag @s add temporary_tag
