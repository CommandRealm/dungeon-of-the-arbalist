##Called to give us the new bottom score.

##Tag so we know we've already gotten a new highscore.
tag @s add temporary_tag

execute unless entity @e[type=minecraft:armor_stand,tag=parkour_leaderboard,tag=temporary_tag_2] run tag @e[type=minecraft:armor_stand,tag=parkour_leaderboard,scores={leaderboard_pos=3}] add temporary_tag_2

##Setting third to be our score.
loot replace entity @e[type=minecraft:armor_stand,tag=parkour_leaderboard,tag=temporary_tag_2,limit=1] armor.head loot game:head
function help:391acf8d1232c774f803e47528aa7665b07d1a47c66fdc9d1cd31721e9f822d1
data modify entity @e[type=minecraft:armor_stand,tag=parkour_leaderboard,tag=temporary_tag_2,limit=1] CustomName set from block 0 10 0 front_text.messages[1]
scoreboard players operation @e[type=minecraft:armor_stand,tag=parkour_leaderboard,tag=temporary_tag_2,limit=1] parkour_score = @s parkour_time
scoreboard players operation @e[type=minecraft:armor_stand,tag=parkour_leaderboard,tag=temporary_tag_2,limit=1] lobby_id = @s lobby_id


##recalculating the leaderboard positions
function leaderboards:parkour/calculate_standings
return 1