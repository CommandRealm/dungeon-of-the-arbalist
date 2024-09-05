#They are stronger enemies that are optional to fight but will provide you with loot.
data modify entity @s[tag=tutorial_3b_marker] CustomName set value '{"extra":[{"bold":true,"color":"gray","text":"("},{"bold":false,"color":"dark_green","text":"2"},{"bold":true,"color":"gray","text":"/"},{"bold":false,"color":"dark_green","text":"3"},{"bold":true,"color":"gray","text":")"}],"text":""}'
data modify entity @s[tag=tutorial_3b_1] CustomName set value '{"color":"aqua","text":"They are stronger enemies that are"}'
data modify entity @s[tag=tutorial_3b_2] CustomName set value '{"color":"aqua","text":"optional to fight but will provide you"}'
data modify entity @s[tag=tutorial_3b_3] CustomName set value '{"color":"aqua","text":"with loot."}'
data modify entity @s[tag=tutorial_3b_4] CustomNameVisible set value 0b
data modify entity @s[tag=tutorial_3b_5] CustomNameVisible set value 0b
return 1