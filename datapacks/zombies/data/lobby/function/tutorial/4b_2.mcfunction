#Players not revived in time die and respawn as a Ghost. Ghosts are free to walk around the map; however, they cannot open doors, use upgrades, or buy items from shops.  
data modify entity @s[tag=tutorial_4b_marker] CustomName set value '{"extra":[{"bold":true,"color":"gray","text":"("},{"bold":false,"color":"dark_green","text":"2"},{"bold":true,"color":"gray","text":"/"},{"bold":false,"color":"dark_green","text":"3"},{"bold":true,"color":"gray","text":")"}],"text":""}'
data modify entity @s[tag=tutorial_4b_1] CustomName set value '{"color":"aqua","text":"Players not revived in time die and"}'
data modify entity @s[tag=tutorial_4b_2] CustomName set value '{"color":"aqua","text":"respawn as a Ghost. Ghosts are free to"}'
data modify entity @s[tag=tutorial_4b_3] CustomName set value '{"color":"aqua","text":"walk around the map; however, they"}'
data modify entity @s[tag=tutorial_4b_4] CustomName set value '{"color":"aqua","text":"cannot open doors, use upgrades, or"}'
data modify entity @s[tag=tutorial_4b_5] CustomName set value '{"color":"aqua","text":"buy items from shops."}'
return 1