##Called to make us leave the tutorial
tag @s remove tutorial
tag @s remove mechanics
playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 2

##Scores
scoreboard players set @s crossbow_id 0
scoreboard players set @s quiver 7
scoreboard players set @s treasure 0

##stats
scoreboard players set @s boost_health 0
scoreboard players set @s boost_quiver 0
scoreboard players set @s boost_looting 0
scoreboard players set @s boost_damage 0
scoreboard players set @s boost_speed 0
scoreboard players set @s boost_revive 0

xp set @s 0 points

function game:mechanics/stat_boosts/update_attributes


##Clear
clear @s 