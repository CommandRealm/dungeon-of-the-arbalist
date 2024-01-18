##Called to use the health boost.



clear @s yellow_dye{stat_boost:1b} 1


scoreboard players add @s boost_treasure 1

scoreboard players add @s loot_multiplier 10


scoreboard players set @s new_color 16776960

function game:mechanics/stat_boosts/color/find_average_color

tellraw @s ["",{"text":"+10% ","color":"gold","bold":true},{"text":"looting multiplier","color":"#fffc00","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have used this booster ","color":"gold"},{"score":{"objective":"boost_treasure","name":"@s"},"color":"#fffc00","bold":true},{"text":"/","color":"gray","bold":true},{"text":"5","color":"#fffc00","bold":true},{"text":" times.","color":"gold","bold":false}]

playsound minecraft:item.trident.return master @s ~ ~ ~ 1 0
execute if entity @s[tag=playing,gamemode=adventure,team=game,nbt={Inventory:[{id:"minecraft:yellow_dye",tag:{stat_boost:1b}}]},scores={boost_looting=..4}] run function game:mechanics/stat_boosts/use_looting