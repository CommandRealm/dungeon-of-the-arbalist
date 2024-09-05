#Right-click to shoot an arrow, and it will automatically charge as long as you have arrows left in your quiver. You can see your quiver in your second-to-last slot of your hotbar.
data modify entity @s[tag=tutorial_1a_marker] CustomName set value '{"extra":[{"bold":true,"color":"gray","text":"("},{"bold":false,"color":"dark_green","text":"2"},{"bold":true,"color":"gray","text":"/"},{"bold":false,"color":"dark_green","text":"3"},{"bold":true,"color":"gray","text":")"}],"text":""}'
data modify entity @s[tag=tutorial_1a_1] CustomName set value '{"color":"green","text":"Right-click to shoot an arrow, and it"}'
data modify entity @s[tag=tutorial_1a_2] CustomName set value '{"color":"green","text":"will automatically charge as long as"}'
data modify entity @s[tag=tutorial_1a_3] CustomName set value '{"color":"green","text":"you have arrows left in your quiver."}'
data modify entity @s[tag=tutorial_1a_4] CustomName set value '{"color":"green","text":"You can see your quiver in the"}'
data modify entity @s[tag=tutorial_1a_5] CustomName set value '{"color":"green","text":"second-to-last slot of your hotbar."}'
data modify entity @s[tag=tutorial_1a_4] CustomNameVisible set value 1b
data modify entity @s[tag=tutorial_1a_5] CustomNameVisible set value 1b
return 1