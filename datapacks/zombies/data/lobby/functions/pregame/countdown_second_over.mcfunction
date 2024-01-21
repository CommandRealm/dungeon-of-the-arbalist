##Does math to display the seconds and then updates the title (also plays sound.)

##
scoreboard players operation $display pregame = $countdown pregame
scoreboard players operation $display pregame /= $20 number


##Titles. It's two commands to avoid "1 seconds"
execute unless score $display pregame matches 1 run title @a[gamemode=adventure] title [{"score":{"objective":"pregame","name":"$display"},"color":"gray","bold":true},{"text":" seconds . . .","color":"dark_green","bold":false}]
execute if score $display pregame matches 1 run title @a[gamemode=adventure] title [{"score":{"objective":"pregame","name":"$display"},"color":"gray","bold":true},{"text":" second . . .","color":"dark_green","bold":false}]


##Sounds
execute as @a at @s run playsound minecraft:entity.zombie.attack_wooden_door master @s ~ ~ ~ 1 1.5

execute if score $display pregame matches 6.. as @a at @s run playsound minecraft:entity.zombie.hurt master @s ~ ~ ~ 0.5 0.9
execute if score $display pregame matches 5 as @a at @s run playsound minecraft:entity.zombie.hurt master @s ~ ~ ~ 0.5 0.85
execute if score $display pregame matches 4 as @a at @s run playsound minecraft:entity.zombie.hurt master @s ~ ~ ~ 0.5 0.8
execute if score $display pregame matches 3 as @a at @s run playsound minecraft:entity.zombie.hurt master @s ~ ~ ~ 0.5 0.75
execute if score $display pregame matches 2 as @a at @s run playsound minecraft:entity.zombie.hurt master @s ~ ~ ~ 0.5 0.7
execute if score $display pregame matches 1 as @a at @s run playsound minecraft:entity.zombie.hurt master @s ~ ~ ~ 0.5 0.5

##Reset score
scoreboard players set $second pregame 20

execute as @a[scores={intro_text=1..}] at @s run function lobby:intro_text/end