#At the start of wave twelve, you can open the boss door to enter the boss room.
data modify entity @s[tag=tutorial_2a_marker] CustomName set value '{"extra":[{"bold":true,"color":"gray","text":"("},{"bold":false,"color":"dark_green","text":"3"},{"bold":true,"color":"gray","text":"/"},{"bold":false,"color":"dark_green","text":"3"},{"bold":true,"color":"gray","text":")"}],"text":""}'
data modify entity @s[tag=tutorial_2a_1] CustomName set value '{"color":"green","text":"At the start of wave twelve, you can"}'
data modify entity @s[tag=tutorial_2a_2] CustomName set value '{"color":"green","text":"open the boss door to enter the boss"}'
data modify entity @s[tag=tutorial_2a_3] CustomName set value '{"color":"green","text":"room."}'
data modify entity @s[tag=tutorial_2a_4] CustomNameVisible set value 0b
data modify entity @s[tag=tutorial_2a_5] CustomNameVisible set value 0b


##Clone
execute if entity @s[tag=tutorial_2a_2] run clone 27 82 -27 24 86 -29 11 82 -29
execute if entity @s[tag=tutorial_2a_2] run fill 14 86 -27 14 86 -30 minecraft:stone_brick_slab[type=top] replace minecraft:air
execute if entity @s[tag=tutorial_2a_2] run fill 11 86 -27 11 86 -30 minecraft:stone_brick_slab[type=top] replace minecraft:air
execute if entity @s[tag=tutorial_2a_2] run kill @e[type=minecraft:marker,x=0,y=66,z=0,distance=..500,tag=doorway]
execute if entity @s[tag=tutorial_2a_2] run summon minecraft:marker 13.0 82 -28 {Tags:["doorway","die_between_games","boss_door","raycast"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute if entity @s[tag=tutorial_2a_2] as @e[type=minecraft:marker,tag=doorway] at @s unless score @s price_left matches 0.. run scoreboard players set @s price_left 1000


return 1