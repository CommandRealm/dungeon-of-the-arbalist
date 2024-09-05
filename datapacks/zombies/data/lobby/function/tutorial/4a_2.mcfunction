#Each stat caps out at level five. Combining different stat boosters can give you a big advantage in the Dungeon!
data modify entity @s[tag=tutorial_4a_marker] CustomName set value '{"extra":[{"bold":true,"color":"gray","text":"("},{"bold":false,"color":"dark_green","text":"2"},{"bold":true,"color":"gray","text":"/"},{"bold":false,"color":"dark_green","text":"2"},{"bold":true,"color":"gray","text":")"}],"text":""}'
data modify entity @s[tag=tutorial_4a_1] CustomName set value '{"color":"green","text":"Each stat caps out at level five."}'
data modify entity @s[tag=tutorial_4a_2] CustomName set value '{"color":"green","text":"Combining different stat boosters can"}'
data modify entity @s[tag=tutorial_4a_3] CustomName set value '{"color":"green","text":"give you a big advantage in the"}'
data modify entity @s[tag=tutorial_4a_4] CustomName set value '{"color":"green","text":"Dungeon!"}'
data modify entity @s[tag=tutorial_4a_5] CustomNameVisible set value 0b
return 1