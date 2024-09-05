 ##Called when our raycast hits a default door
title @s[tag=!play_alternate_title] title [{"text":"","type":"text"}]
execute if entity @e[type=minecraft:marker,distance=..10,tag=doorway] if entity @s[x=5007,y=89,z=23,distance=..10] run title @s[tag=!play_alternate_title] subtitle [{"text":"Find the ","color":"gray","type":"text"},{"text":"Pink Key","color":"light_purple","bold":true,"type":"text"},{"text":" to open.","color":"gray","type":"text"}]

execute if entity @e[type=minecraft:marker,distance=..10,tag=doorway] if entity @s[x=4984,y=79,z=37,distance=..10] run title @s[tag=!play_alternate_title] subtitle [{"text":"Find the ","color":"gray","type":"text"},{"text":"Blue Key","color":"blue","bold":true,"type":"text"},{"text":" to open.","color":"gray","type":"text"}]

execute if entity @e[type=minecraft:marker,distance=..10,tag=doorway] if entity @s[x=3038,y=91,z=20,distance=..10] run title @s[tag=!play_alternate_title] subtitle [{"text":"Find the ","color":"gray","type":"text"},{"text":"Lookout Key","color":"gold","bold":true,"type":"text"},{"text":" to open.","color":"gray","type":"text"}]

execute if entity @e[type=minecraft:marker,distance=..10,tag=doorway] if entity @s[x=3160,y=73,z=113,distance=..10] run title @s[tag=!play_alternate_title] subtitle [{"text":"Find the ","color":"gray","type":"text"},{"text":"Storage Key","color":"gray","bold":true,"type":"text"},{"text":" to open.","color":"gray","type":"text"}]

execute if entity @e[type=minecraft:marker,distance=..10,tag=doorway] if entity @s[x=3058,y=70,z=109,distance=..10] run title @s[tag=!play_alternate_title] subtitle [{"text":"Find the ","color":"gray","type":"text"},{"text":"Storage Key","color":"gray","bold":true,"type":"text"},{"text":" to open.","color":"gray","type":"text"}]

execute if entity @e[type=minecraft:marker,distance=..10,tag=doorway] if entity @s[x=3160,y=72,z=192,distance=..10] run title @s[tag=!play_alternate_title] subtitle [{"text":"Find the ","color":"gray","type":"text"},{"text":"Crypt Key","color":"red","bold":true,"type":"text"},{"text":" to open.","color":"gray","type":"text"}]


##temporary tag so we know we hit something
tag @s add temporary_tag

return 1