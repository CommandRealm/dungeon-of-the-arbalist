#When you run out of arrows in your quiver, your crossbow will reload automatically. Reload time varies from crossbow to crossbow. You can also press offhand to reload instantly.
data modify entity @s[tag=tutorial_1a_marker] CustomName set value '["",{"text":"(","bold":true,"color":"gray"},{"text":"3","bold":false,"color":"dark_green"},{"text":"/","color":"gray","bold":true},{"text":"3","bold":false,"color":"dark_green"},{"text":")","bold":true,"color":"gray"}]'
data modify entity @s[tag=tutorial_1a_1] CustomName set value '{"text":"When you run out of arrows in your","color":"green"}'
data modify entity @s[tag=tutorial_1a_2] CustomName set value '{"text":"quiver, your crossbow will reload","color":"green"}'
data modify entity @s[tag=tutorial_1a_3] CustomName set value '{"text":"automatically. Reload time varies from","color":"green"}'
data modify entity @s[tag=tutorial_1a_4] CustomName set value '{"text":"crossbow to crossbow. You can also","color":"green"}'
data modify entity @s[tag=tutorial_1a_5] CustomName set value '[{"text":"press offhand (","color":"green"},{"keybind":"key.swapOffhand"},{"text":") to reload."}]'