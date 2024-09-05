#To use an upgrade, walk up to the spinning block and drop your crossbow. If the upgrade is compatible with your current crossbow, it will upgrade your crossbow to the next tier.
data modify entity @s[tag=tutorial_1b_marker] CustomName set value '{"extra":[{"bold":true,"color":"gray","text":"("},{"bold":false,"color":"dark_green","text":"2"},{"bold":true,"color":"gray","text":"/"},{"bold":false,"color":"dark_green","text":"3"},{"bold":true,"color":"gray","text":")"}],"text":""}'
data modify entity @s[tag=tutorial_1b_1] CustomName set value '{"color":"aqua","text":"To use an upgrade, walk up to the"}'
data modify entity @s[tag=tutorial_1b_2] CustomName set value '{"color":"aqua","text":"spinning block and drop your crossbow."}'
data modify entity @s[tag=tutorial_1b_3] CustomName set value '{"color":"aqua","text":"If the upgrade is compatible with your"}'
data modify entity @s[tag=tutorial_1b_4] CustomName set value '{"color":"aqua","text":"current crossbow, it will upgrade your"}'
data modify entity @s[tag=tutorial_1b_5] CustomName set value '{"color":"aqua","text":"crossbow to the next tier."}'
data modify entity @s[tag=tutorial_1b_5] CustomNameVisible set value 1b
return 1