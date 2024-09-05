#Crossbows go from tier zero to tier three.
data modify entity @s[tag=tutorial_1b_marker] CustomName set value '{"extra":[{"bold":true,"color":"gray","text":"("},{"bold":false,"color":"dark_green","text":"3"},{"bold":true,"color":"gray","text":"/"},{"bold":false,"color":"dark_green","text":"3"},{"bold":true,"color":"gray","text":")"}],"text":""}'
data modify entity @s[tag=tutorial_1b_1] CustomName set value '{"color":"aqua","text":"Crossbows go from tier zero to tier"}'
data modify entity @s[tag=tutorial_1b_2] CustomName set value '{"color":"aqua","text":"three."}'
data modify entity @s[tag=tutorial_1b_3] CustomNameVisible set value 0b
data modify entity @s[tag=tutorial_1b_4] CustomNameVisible set value 0b
data modify entity @s[tag=tutorial_1b_5] CustomNameVisible set value 0b
return 1