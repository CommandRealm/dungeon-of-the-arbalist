#Once you enter the final boss room, you will not be able to leave until you lose or defeat the boss. 
data modify entity @s[tag=tutorial_3b_marker] CustomName set value '{"extra":[{"bold":true,"color":"gray","text":"("},{"bold":false,"color":"dark_green","text":"3"},{"bold":true,"color":"gray","text":"/"},{"bold":false,"color":"dark_green","text":"3"},{"bold":true,"color":"gray","text":")"}],"text":""}'
data modify entity @s[tag=tutorial_3b_1] CustomName set value '{"color":"aqua","text":"Once you enter the final boss room,"}'
data modify entity @s[tag=tutorial_3b_2] CustomName set value '{"color":"aqua","text":"you will not be able to leave until"}'
data modify entity @s[tag=tutorial_3b_3] CustomName set value '{"color":"aqua","text":"you lose or defeat the boss."}'
data modify entity @s[tag=tutorial_3b_4] CustomNameVisible set value 0b
data modify entity @s[tag=tutorial_3b_5] CustomNameVisible set value 0b
return 1