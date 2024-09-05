#region 1A
#The signature weapon of any Arbalist is their crossbow. You always start with the default (tier zero) crossbow.
data modify entity @s[tag=tutorial_1a_marker] CustomName set value '{"extra":[{"bold":true,"color":"gray","text":"("},{"bold":false,"color":"dark_green","text":"1"},{"bold":true,"color":"gray","text":"/"},{"bold":false,"color":"dark_green","text":"3"},{"bold":true,"color":"gray","text":")"}],"text":""}'
data modify entity @s[tag=tutorial_1a_1] CustomName set value '{"color":"green","text":"The signature weapon of any Arbalist"}'
data modify entity @s[tag=tutorial_1a_2] CustomName set value '{"color":"green","text":"is their crossbow. You always start"}'
data modify entity @s[tag=tutorial_1a_3] CustomName set value '{"color":"green","text":"with the default (tier zero) crossbow."}'
data modify entity @s[tag=tutorial_1a_4] CustomNameVisible set value 0b
data modify entity @s[tag=tutorial_1a_5] CustomNameVisible set value 0b
#endregion

#region 1B
#Throughout the Dungeon, you will find upgrades. Upgrades give your crossbow special element-based powers and modifiers that will make you stronger.
data modify entity @s[tag=tutorial_1b_marker] CustomName set value '{"extra":[{"bold":true,"color":"gray","text":"("},{"bold":false,"color":"dark_green","text":"1"},{"bold":true,"color":"gray","text":"/"},{"bold":false,"color":"dark_green","text":"3"},{"bold":true,"color":"gray","text":")"}],"text":""}'
data modify entity @s[tag=tutorial_1b_1] CustomName set value '{"color":"aqua","text":"Throughout the Dungeon, you will find"}'
data modify entity @s[tag=tutorial_1b_2] CustomName set value '{"color":"aqua","text":"upgrades. Upgrades give your crossbow"}'
data modify entity @s[tag=tutorial_1b_3] CustomName set value '{"color":"aqua","text":"special element-based powers and"}'
data modify entity @s[tag=tutorial_1b_4] CustomName set value '{"color":"aqua","text":"modifiers that will make you stronger."}'
data modify entity @s[tag=tutorial_1b_3] CustomNameVisible set value 1b
data modify entity @s[tag=tutorial_1b_4] CustomNameVisible set value 1b
#endregion

#region 2A
#To traverse through the Dungeon, you must purchase doors with treasure dropped from mobs. To open a door, walk up to it, and drop your crossbow (or any item).  
data modify entity @s[tag=tutorial_2a_marker] CustomName set value '{"extra":[{"bold":true,"color":"gray","text":"("},{"bold":false,"color":"dark_green","text":"1"},{"bold":true,"color":"gray","text":"/"},{"bold":false,"color":"dark_green","text":"3"},{"bold":true,"color":"gray","text":")"}],"text":""}'
data modify entity @s[tag=tutorial_2a_1] CustomName set value '{"color":"green","text":"To traverse through the Dungeon, you"}'
data modify entity @s[tag=tutorial_2a_2] CustomName set value '{"color":"green","text":"must purchase doors with treasure"}'
data modify entity @s[tag=tutorial_2a_3] CustomName set value '{"color":"green","text":"dropped from mobs. To open a door,"}'
data modify entity @s[tag=tutorial_2a_4] CustomName set value '{"color":"green","text":"walk up to it, and drop your crossbow"}'
data modify entity @s[tag=tutorial_2a_5] CustomName set value '{"color":"green","text":"(or any item)."}'
data modify entity @s[tag=tutorial_2a_4] CustomNameVisible set value 1b
data modify entity @s[tag=tutorial_2a_5] CustomNameVisible set value 1b


##Clone
execute if entity @s[tag=tutorial_2a_1] run clone 27 82 -27 24 86 -29 11 82 -29
execute if entity @s[tag=tutorial_2a_1] run fill 14 86 -27 14 86 -30 minecraft:stone_brick_slab[type=top] replace minecraft:air
execute if entity @s[tag=tutorial_2a_1] run fill 11 86 -27 11 86 -30 minecraft:stone_brick_slab[type=top] replace minecraft:air
execute if entity @s[tag=tutorial_2a_1] run fill 14 82 -28 11 86 -28 minecraft:spruce_planks replace minecraft:polished_blackstone
execute if entity @s[tag=tutorial_2a_1] run fill 14 82 -28 11 86 -28 minecraft:oak_log replace minecraft:chiseled_polished_blackstone
execute if entity @s[tag=tutorial_2a_1] run kill @e[type=minecraft:marker,x=0,y=66,z=0,distance=..500,tag=doorway]
execute if entity @s[tag=tutorial_2a_1] run summon minecraft:marker 13.0 82 -28 {Tags:["doorway","die_between_games","default_door","raycast"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute if entity @s[tag=tutorial_2a_1] as @e[type=minecraft:marker,tag=doorway] at @s unless score @s price_left matches 0.. run scoreboard players set @s price_left 15
execute if entity @s[tag=tutorial_2a_1] positioned 12 83 -28 as @e[type=minecraft:marker,tag=doorway,sort=nearest,limit=1] at @s run function game:door/get_price_increment


#endregion

#region 2B
#You will encounter several shops throughout the Dungeon, a shopkeeper will attend most of them. They will sell stat boosters, items, and crossbows.
data modify entity @s[tag=tutorial_2b_marker] CustomName set value '{"extra":[{"bold":true,"color":"gray","text":"("},{"bold":false,"color":"dark_green","text":"1"},{"bold":true,"color":"gray","text":"/"},{"bold":false,"color":"dark_green","text":"2"},{"bold":true,"color":"gray","text":")"}],"text":""}'
data modify entity @s[tag=tutorial_2b_1] CustomName set value '{"color":"aqua","text":"You will encounter several shops"}'
data modify entity @s[tag=tutorial_2b_2] CustomName set value '{"color":"aqua","text":"throughout the Dungeon, a shopkeeper"}'
data modify entity @s[tag=tutorial_2b_3] CustomName set value '{"color":"aqua","text":"will attend most of them. They will"}'
data modify entity @s[tag=tutorial_2b_4] CustomName set value '{"color":"aqua","text":"sell stat boosters, items, and"}'
data modify entity @s[tag=tutorial_2b_5] CustomName set value '{"color":"aqua","text":"crossbows."}'
data modify entity @s[tag=tutorial_2b_4] CustomNameVisible set value 1b
data modify entity @s[tag=tutorial_2b_5] CustomNameVisible set value 1b
#endregion

#region 3A
#In the randomly generated Dungeon, the game progresses in waves. You can keep track of what wave you're on and how long it lasts on the boss bar.
data modify entity @s[tag=tutorial_3a_marker] CustomName set value '{"extra":[{"bold":true,"color":"gray","text":"("},{"bold":false,"color":"dark_green","text":"1"},{"bold":true,"color":"gray","text":"/"},{"bold":false,"color":"dark_green","text":"2"},{"bold":true,"color":"gray","text":")"}],"text":""}'
data modify entity @s[tag=tutorial_3a_1] CustomName set value '{"color":"green","text":"In the randomly generated Dungeon, the"}'
data modify entity @s[tag=tutorial_3a_2] CustomName set value '{"color":"green","text":"game progresses in waves. You can keep"}'
data modify entity @s[tag=tutorial_3a_3] CustomName set value '{"color":"green","text":"track of what wave you\'re on and how"}'
data modify entity @s[tag=tutorial_3a_4] CustomName set value '{"color":"green","text":"long it lasts on the boss bar."}'
#endregion

#region 3B
#Once you enter the middle ring through the dark oak doors, you'll have a chance to encounter a miniboss. Two of the eight rooms in the middle-ring are always minibosses.
data modify entity @s[tag=tutorial_3b_marker] CustomName set value '{"extra":[{"bold":true,"color":"gray","text":"("},{"bold":false,"color":"dark_green","text":"1"},{"bold":true,"color":"gray","text":"/"},{"bold":false,"color":"dark_green","text":"3"},{"bold":true,"color":"gray","text":")"}],"text":""}'
data modify entity @s[tag=tutorial_3b_1] CustomName set value '{"color":"aqua","text":"Once you enter the middle ring through"}'
data modify entity @s[tag=tutorial_3b_2] CustomName set value '{"color":"aqua","text":"the dark oak doors, you\'ll have a"}'
data modify entity @s[tag=tutorial_3b_3] CustomName set value '{"color":"aqua","text":"chance to encounter a miniboss. Two of"}'
data modify entity @s[tag=tutorial_3b_4] CustomName set value '{"color":"aqua","text":"the eight rooms in the middle-ring are"}'
data modify entity @s[tag=tutorial_3b_5] CustomName set value '{"color":"aqua","text":"always minibosses."}'
data modify entity @s[tag=tutorial_3b_4] CustomNameVisible set value 1b
data modify entity @s[tag=tutorial_3b_5] CustomNameVisible set value 1b
#endregion

#region 4A
#You can find stat boosters in shops or get them by killing some minibosses. There are six stat boosters types: Health, Damage, Looting, Revive, Speed, and Quiver.
data modify entity @s[tag=tutorial_4a_marker] CustomName set value '{"extra":[{"bold":true,"color":"gray","text":"("},{"bold":false,"color":"dark_green","text":"1"},{"bold":true,"color":"gray","text":"/"},{"bold":false,"color":"dark_green","text":"2"},{"bold":true,"color":"gray","text":")"}],"text":""}'
data modify entity @s[tag=tutorial_4a_1] CustomName set value '{"color":"green","text":"You can find stat boosters in shops or"}'
data modify entity @s[tag=tutorial_4a_2] CustomName set value '{"color":"green","text":"get them by killing some minibosses."}'
data modify entity @s[tag=tutorial_4a_3] CustomName set value '{"color":"green","text":"There are six stat boosters types:"}'
data modify entity @s[tag=tutorial_4a_4] CustomName set value '{"color":"green","text":"Health, Damage, Looting, Revive, Speed,"}'
data modify entity @s[tag=tutorial_4a_5] CustomName set value '{"color":"green","text":"and Quiver."}'
data modify entity @s[tag=tutorial_4a_5] CustomNameVisible set value 1b
#endregion

#region 4B
#When a player dies, they have thirty seconds to be revived by another player. To revive a player, stand next to them for the required amount of time. 
data modify entity @s[tag=tutorial_4b_marker] CustomName set value '{"extra":[{"bold":true,"color":"gray","text":"("},{"bold":false,"color":"dark_green","text":"1"},{"bold":true,"color":"gray","text":"/"},{"bold":false,"color":"dark_green","text":"3"},{"bold":true,"color":"gray","text":")"}],"text":""}'
data modify entity @s[tag=tutorial_4b_1] CustomName set value '{"color":"aqua","text":"When a player dies, they have thirty"}'
data modify entity @s[tag=tutorial_4b_2] CustomName set value '{"color":"aqua","text":"seconds to be revived by another"}'
data modify entity @s[tag=tutorial_4b_3] CustomName set value '{"color":"aqua","text":"player. To revive a player, stand next"}'
data modify entity @s[tag=tutorial_4b_4] CustomName set value '{"color":"aqua","text":"to them for the required amount of"}'
data modify entity @s[tag=tutorial_4b_5] CustomName set value '{"color":"aqua","text":"time."}'
#endregion
return 1