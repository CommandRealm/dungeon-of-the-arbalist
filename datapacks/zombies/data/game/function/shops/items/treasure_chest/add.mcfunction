##called when we should add treasure from the treasure chest.


##subtracting 200 (so it's between 0 and 200)
scoreboard players remove $rand random 200

##removing treasure
scoreboard players operation @s treasure += $rand random
scoreboard players operation @s global_treasure += $rand random
scoreboard players operation @s local_treasure += $rand random

scoreboard players set @s[scores={treasure=..-1}] treasure 0

##message
tellraw @s [{"text":"Opening the chest caused you to gain ","color":"gold","type":"text"},{"score":{"objective":"random","name":"$rand"},"color":"green","type":"score"},{"text":" treasure.","color":"yellow","type":"text"}]


##so we hear the sound 
scoreboard players operation $total calculate = $rand random

function game:mechanics/play_treasure_sound
return 1