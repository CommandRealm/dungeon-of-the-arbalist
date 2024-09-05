##called when someone v

##Adding votes to end
scoreboard players add $votes end 1

##Telling players you voted
execute unless score $starting_players game matches 1 run tellraw @a[tag=playing] [{"text":"☣ ","color":"dark_green","type":"text"},{"selector":"@s","type":"selector"},{"text":" has voted to end the game. Type ","color":"gray","type":"text"},{"text":"/trigger end","color":"red","type":"text"},{"text":" to vote.","color":"gray","type":"text"}]
execute as @a[tag=playing] at @s run playsound minecraft:entity.ghast.warn master @s ~ ~ ~ 1 0

execute store result score $current_players game if entity @a[tag=playing,team=game]

##Calculating the percentage
scoreboard players operation $percentage end = $votes end
scoreboard players operation $percentage end *= $100 number
scoreboard players operation $percentage end /= $current_players game

execute if score $percentage end matches 75.. run function game:vote_end/end


##resetting our score
scoreboard players reset @s end

tag @s add voted_end
return 1