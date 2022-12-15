#region 1A
#The signature weapon of any Arbalist is their crossbow. You always start with the default (tier zero) crossbow.
data modify entity @s[tag=tutorial_1a_marker] CustomName set value '["",{"text":"(","bold":true,"color":"gray"},{"text":"1","bold":false,"color":"dark_green"},{"text":"/","color":"gray","bold":true},{"text":"3","bold":false,"color":"dark_green"},{"text":")","bold":true,"color":"gray"}]'
data modify entity @s[tag=tutorial_1a_1] CustomName set value '{"text":"The signature weapon of any Arbalist","color":"green"}'
data modify entity @s[tag=tutorial_1a_2] CustomName set value '{"text":"is their crossbow. You always start","color":"green"}'
data modify entity @s[tag=tutorial_1a_3] CustomName set value '{"text":"with the default (tier zero) crossbow.","color":"green"}'
data modify entity @s[tag=tutorial_1a_4] CustomNameVisible set value 0b
data modify entity @s[tag=tutorial_1a_5] CustomNameVisible set value 0b
#endregion

#region 1B
#Throughout the Dungeon, you will find upgrades. Upgrades give your crossbow special element-based powers and modifiers that will make you stronger.
data modify entity @s[tag=tutorial_1b_marker] CustomName set value '["",{"text":"(","bold":true,"color":"gray"},{"text":"1","bold":false,"color":"dark_green"},{"text":"/","color":"gray","bold":true},{"text":"3","bold":false,"color":"dark_green"},{"text":")","bold":true,"color":"gray"}]'
data modify entity @s[tag=tutorial_1b_1] CustomName set value '{"text":"Throughout the Dungeon, you will find","color":"aqua"}'
data modify entity @s[tag=tutorial_1b_2] CustomName set value '{"text":"upgrades. Upgrades give your crossbow","color":"aqua"}'
data modify entity @s[tag=tutorial_1b_3] CustomName set value '{"text":"special element-based powers and","color":"aqua"}'
data modify entity @s[tag=tutorial_1b_4] CustomName set value '{"text":"modifiers that will make you stronger.","color":"aqua"}'
data modify entity @s[tag=tutorial_1b_3] CustomNameVisible set value 1b
data modify entity @s[tag=tutorial_1b_4] CustomNameVisible set value 1b
#endregion

#region 2A
#To traverse through the Dungeon, you must purchase doors with treasure dropped from mobs. To open a door, walk up to it, and drop your crossbow (or any item).  
data modify entity @s[tag=tutorial_2a_marker] CustomName set value '["",{"text":"(","bold":true,"color":"gray"},{"text":"1","bold":false,"color":"dark_green"},{"text":"/","color":"gray","bold":true},{"text":"3","bold":false,"color":"dark_green"},{"text":")","bold":true,"color":"gray"}]'
data modify entity @s[tag=tutorial_2a_1] CustomName set value '{"text":"To traverse through the Dungeon, you","color":"green"}'
data modify entity @s[tag=tutorial_2a_2] CustomName set value '{"text":"must purchase doors with treasure","color":"green"}'
data modify entity @s[tag=tutorial_2a_3] CustomName set value '{"text":"dropped from mobs. To open a door,","color":"green"}'
data modify entity @s[tag=tutorial_2a_4] CustomName set value '{"text":"walk up to it, and drop your crossbow","color":"green"}'
data modify entity @s[tag=tutorial_2a_5] CustomName set value '{"text":"(or any item).","color":"green"}'
data modify entity @s[tag=tutorial_2a_4] CustomNameVisible set value 1b
data modify entity @s[tag=tutorial_2a_5] CustomNameVisible set value 1b


##Clone
execute if entity @s[tag=tutorial_2a_1] run clone 27 82 -27 24 86 -29 11 82 -29
execute if entity @s[tag=tutorial_2a_1] run fill 14 86 -27 14 86 -30 stone_brick_slab[type=top] replace air
execute if entity @s[tag=tutorial_2a_1] run fill 11 86 -27 11 86 -30 stone_brick_slab[type=top] replace air
execute if entity @s[tag=tutorial_2a_1] run fill 14 82 -28 11 86 -28 spruce_planks replace polished_blackstone
execute if entity @s[tag=tutorial_2a_1] run fill 14 82 -28 11 86 -28 oak_log replace chiseled_polished_blackstone
execute if entity @s[tag=tutorial_2a_1] run kill @e[type=marker,tag=doorway,x=0,y=66,z=0,distance=..500]
execute if entity @s[tag=tutorial_2a_1] run summon marker 13.0 82 -28 {Tags:["doorway","die_between_games","default_door","raycast"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute if entity @s[tag=tutorial_2a_1] as @e[type=marker,tag=doorway] at @s unless score @s price_left matches 0.. run scoreboard players set @s price_left 15
execute if entity @s[tag=tutorial_2a_1] positioned 12 83 -28 as @e[type=marker,tag=doorway,limit=1,sort=nearest] at @s run function game:door/get_price_increment


#endregion

#region 2B
#You will encounter several shops throughout the Dungeon, a shopkeeper will attend most of them. They will sell stat boosters, items, and crossbows.
data modify entity @s[tag=tutorial_2b_marker] CustomName set value '["",{"text":"(","bold":true,"color":"gray"},{"text":"1","bold":false,"color":"dark_green"},{"text":"/","color":"gray","bold":true},{"text":"2","bold":false,"color":"dark_green"},{"text":")","bold":true,"color":"gray"}]'
data modify entity @s[tag=tutorial_2b_1] CustomName set value '{"text":"You will encounter several shops","color":"aqua"}'
data modify entity @s[tag=tutorial_2b_2] CustomName set value '{"text":"throughout the Dungeon, a shopkeeper","color":"aqua"}'
data modify entity @s[tag=tutorial_2b_3] CustomName set value '{"text":"will attend most of them. They will","color":"aqua"}'
data modify entity @s[tag=tutorial_2b_4] CustomName set value '{"text":"sell stat boosters, items, and","color":"aqua"}'
data modify entity @s[tag=tutorial_2b_5] CustomName set value '{"text":"crossbows.","color":"aqua"}'
data modify entity @s[tag=tutorial_2b_4] CustomNameVisible set value 1b
data modify entity @s[tag=tutorial_2b_5] CustomNameVisible set value 1b
#endregion

#region 3A
#In the randomly generated Dungeon, the game progresses in waves. You can keep track of what wave you're on and how long it lasts on the boss bar.
data modify entity @s[tag=tutorial_3a_marker] CustomName set value '["",{"text":"(","bold":true,"color":"gray"},{"text":"1","bold":false,"color":"dark_green"},{"text":"/","color":"gray","bold":true},{"text":"2","bold":false,"color":"dark_green"},{"text":")","bold":true,"color":"gray"}]'
data modify entity @s[tag=tutorial_3a_1] CustomName set value '{"text":"In the randomly generated Dungeon, the","color":"green"}'
data modify entity @s[tag=tutorial_3a_2] CustomName set value '{"text":"game progresses in waves. You can keep","color":"green"}'
data modify entity @s[tag=tutorial_3a_3] CustomName set value '{"text":"track of what wave you\'re on and how","color":"green"}'
data modify entity @s[tag=tutorial_3a_4] CustomName set value '{"text":"long it lasts on the boss bar.","color":"green"}'
#endregion

#region 3B
#Once you enter the middle ring through the dark oak doors, you'll have a chance to encounter a miniboss. Two of the eight rooms in the middle-ring are always minibosses.
data modify entity @s[tag=tutorial_3b_marker] CustomName set value '["",{"text":"(","bold":true,"color":"gray"},{"text":"1","bold":false,"color":"dark_green"},{"text":"/","color":"gray","bold":true},{"text":"3","bold":false,"color":"dark_green"},{"text":")","bold":true,"color":"gray"}]'
data modify entity @s[tag=tutorial_3b_1] CustomName set value '{"text":"Once you enter the middle ring through","color":"aqua"}'
data modify entity @s[tag=tutorial_3b_2] CustomName set value '{"text":"the dark oak doors, you\'ll have a","color":"aqua"}'
data modify entity @s[tag=tutorial_3b_3] CustomName set value '{"text":"chance to encounter a miniboss. Two of","color":"aqua"}'
data modify entity @s[tag=tutorial_3b_4] CustomName set value '{"text":"the eight rooms in the middle-ring are","color":"aqua"}'
data modify entity @s[tag=tutorial_3b_5] CustomName set value '{"text":"always minibosses.","color":"aqua"}'
data modify entity @s[tag=tutorial_3b_4] CustomNameVisible set value 1b
data modify entity @s[tag=tutorial_3b_5] CustomNameVisible set value 1b
#endregion

#region 4A
#You can find stat boosters in shops or get them by killing some minibosses. There are six stat boosters types: Health, Damage, Looting, Revive, Speed, and Quiver.
data modify entity @s[tag=tutorial_4a_marker] CustomName set value '["",{"text":"(","bold":true,"color":"gray"},{"text":"1","bold":false,"color":"dark_green"},{"text":"/","color":"gray","bold":true},{"text":"2","bold":false,"color":"dark_green"},{"text":")","bold":true,"color":"gray"}]'
data modify entity @s[tag=tutorial_4a_1] CustomName set value '{"text":"You can find stat boosters in shops or","color":"green"}'
data modify entity @s[tag=tutorial_4a_2] CustomName set value '{"text":"get them by killing some minibosses.","color":"green"}'
data modify entity @s[tag=tutorial_4a_3] CustomName set value '{"text":"There are six stat boosters types:","color":"green"}'
data modify entity @s[tag=tutorial_4a_4] CustomName set value '{"text":"Health, Damage, Looting, Revive, Speed,","color":"green"}'
data modify entity @s[tag=tutorial_4a_5] CustomName set value '{"text":"and Quiver.","color":"green"}'
data modify entity @s[tag=tutorial_4a_5] CustomNameVisible set value 1b
#endregion

#region 4B
#When a player dies, they have thirty seconds to be revived by another player. To revive a player, stand next to them for the required amount of time. 
data modify entity @s[tag=tutorial_4b_marker] CustomName set value '["",{"text":"(","bold":true,"color":"gray"},{"text":"1","bold":false,"color":"dark_green"},{"text":"/","color":"gray","bold":true},{"text":"3","bold":false,"color":"dark_green"},{"text":")","bold":true,"color":"gray"}]'
data modify entity @s[tag=tutorial_4b_1] CustomName set value '{"text":"When a player dies, they have thirty","color":"aqua"}'
data modify entity @s[tag=tutorial_4b_2] CustomName set value '{"text":"seconds to be revived by another","color":"aqua"}'
data modify entity @s[tag=tutorial_4b_3] CustomName set value '{"text":"player. To revive a player, stand next","color":"aqua"}'
data modify entity @s[tag=tutorial_4b_4] CustomName set value '{"text":"to them for the required amount of","color":"aqua"}'
data modify entity @s[tag=tutorial_4b_5] CustomName set value '{"text":"time.","color":"aqua"}'
#endregion