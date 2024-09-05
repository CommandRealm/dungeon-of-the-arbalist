#When you run out of arrows in your quiver, your crossbow will reload automatically. Reload time varies from crossbow to crossbow. You can also press offhand to reload instantly.
data modify entity @s[tag=tutorial_1a_marker] CustomName set value '{"extra":[{"bold":true,"color":"gray","text":"("},{"bold":false,"color":"dark_green","text":"3"},{"bold":true,"color":"gray","text":"/"},{"bold":false,"color":"dark_green","text":"3"},{"bold":true,"color":"gray","text":")"}],"text":""}'
data modify entity @s[tag=tutorial_1a_1] CustomName set value '{"color":"green","text":"When you run out of arrows in your"}'
data modify entity @s[tag=tutorial_1a_2] CustomName set value '{"color":"green","text":"quiver, your crossbow will reload"}'
data modify entity @s[tag=tutorial_1a_3] CustomName set value '{"color":"green","text":"automatically. Reload time varies from"}'
data modify entity @s[tag=tutorial_1a_4] CustomName set value '{"color":"green","text":"crossbow to crossbow. You can also"}'
data modify entity @s[tag=tutorial_1a_5] CustomName set value '{"color":"green","extra":[{"keybind":"key.swapOffhand"},") to reload."],"text":"press offhand ("}'
return 1