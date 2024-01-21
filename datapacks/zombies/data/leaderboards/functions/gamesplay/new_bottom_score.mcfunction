##Called to give us the new bottom score.

##Tag so we know we've already gotten a new highscore.
tag @s add temporary_tag

execute unless entity @e[type=armor_stand,tag=gamesplay_leaderboard,tag=temporary_tag_2] run tag @e[type=armor_stand,tag=gamesplay_leaderboard,scores={leaderboard_pos=3}] add temporary_tag_2

##Setting third to be our score.
loot replace entity @e[type=armor_stand,tag=gamesplay_leaderboard,tag=temporary_tag_2,limit=1] armor.head loot game:head
data modify block 0 10 0 front_text.messages[1] set value '[{"text":"","italic":false},{"selector":"@p[tag=temporary_tag]"},{"text":"\'s ","color":"lime"},{"text":"games played","color":"lime"},{"text":": ","color":"gray"},{"score":{"objective":"gamesplay_score","name":"@p[tag=temporary_tag]"},"color":"gold"}]'
data modify entity @e[type=armor_stand,tag=gamesplay_leaderboard,tag=temporary_tag_2,limit=1] CustomName set from block 0 10 0 front_text.messages[1]

scoreboard players operation @e[type=armor_stand,tag=gamesplay_leaderboard,tag=temporary_tag_2,limit=1] gamesplay_score = @s gamesplay_score
scoreboard players operation @e[type=armor_stand,tag=gamesplay_leaderboard,tag=temporary_tag_2,limit=1] lobby_id = @s lobby_id


##recalculating the leaderboard positions
function leaderboards:gamesplay/calculate_standings