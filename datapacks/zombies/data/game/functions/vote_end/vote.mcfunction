##called when someone v

##Adding votes to end
scoreboard players add $votes end 1

##Telling players you voted
execute unless score $starting_players game matches 1 run tellraw @a[tag=playing] [{"text":"☣ ","color":"dark_green"},{"selector":"@s"},{"text":" has voted to end the game. Type ","color":"gray"},{"text":"/trigger end","color":"red"},{"text":" to vote.","color":"gray"}]
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