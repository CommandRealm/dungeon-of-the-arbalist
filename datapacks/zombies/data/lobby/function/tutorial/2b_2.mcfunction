#You can sneak while looking at an item in the shop to get a description of what it does.
data modify entity @s[tag=tutorial_2b_marker] CustomName set value '{"extra":[{"bold":true,"color":"gray","text":"("},{"bold":false,"color":"dark_green","text":"2"},{"bold":true,"color":"gray","text":"/"},{"bold":false,"color":"dark_green","text":"2"},{"bold":true,"color":"gray","text":")"}],"text":""}'
data modify entity @s[tag=tutorial_2b_1] CustomName set value '{"color":"aqua","text":"You can sneak while looking at an item"}'
data modify entity @s[tag=tutorial_2b_2] CustomName set value '{"color":"aqua","text":"in the shop to get a description of"}'
data modify entity @s[tag=tutorial_2b_3] CustomName set value '{"color":"aqua","text":"what it does."}'
data modify entity @s[tag=tutorial_2b_4] CustomNameVisible set value 0b
data modify entity @s[tag=tutorial_2b_5] CustomNameVisible set value 0b
return 1