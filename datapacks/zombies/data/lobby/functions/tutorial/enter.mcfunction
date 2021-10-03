##Called to enter the tutorial
tag @s add tutorial
tag @s add mechanics
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

##changing the ghost head
execute as @r at @s run loot replace entity @e[type=armor_stand,tag=tutorial_ghost] armor.head loot game:head