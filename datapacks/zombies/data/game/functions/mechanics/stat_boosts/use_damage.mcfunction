##Called to use the health boost.



clear @s purple_dye{stat_boost:1b} 1


scoreboard players add @s boost_damage 1


scoreboard players set @s new_color 8323327

function game:mechanics/stat_boosts/color/find_average_color

tellraw @s ["",{"text":"+6 ","color":"gold","bold":true},{"text":"damage","color":"#a000eb","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have used this booster ","color":"gold"},{"score":{"objective":"boost_damage","name":"@s"},"color":"#a000eb","bold":true},{"text":"/","color":"gray","bold":true},{"text":"5","color":"#a000eb","bold":true},{"text":" times.","color":"gold","bold":false}]
playsound minecraft:item.trident.return master @s ~ ~ ~ 1 0

execute if entity @s[tag=playing,gamemode=adventure,team=game,nbt={Inventory:[{id:"minecraft:purple_dye",tag:{stat_boost:1b}}]},scores={boost_damage=..4}] run function game:mechanics/stat_boosts/use_damage