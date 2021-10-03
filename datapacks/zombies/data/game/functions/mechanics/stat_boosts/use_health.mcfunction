##Called to use the health boost.



clear @s red_dye{stat_boost:1b} 1


scoreboard players add @s boost_health 1

function game:mechanics/stat_boosts/update_attributes

scoreboard players set @s new_color 16711680

function game:mechanics/stat_boosts/color/find_average_color

##effect
effect give @s regeneration 3 1 true

tellraw @s ["",{"text":"+1 ","color":"gold","bold":true},{"text":"Heart","color":"red","bold":false},{"text":" | ","color":"dark_gray","bold":false},{"text":"You have used this booster ","color":"gold"},{"score":{"objective":"boost_health","name":"@s"},"color":"red","bold":true},{"text":"/","color":"gray","bold":true},{"text":"5","color":"red","bold":true},{"text":" times.","color":"gold","bold":false}]

playsound minecraft:item.trident.return master @s ~ ~ ~ 1 0

scoreboard players set @s booster_delay 61


##Health color

#c40009

##12845065




