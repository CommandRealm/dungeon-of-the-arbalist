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
scoreboard players set @s boost_treasure 0
scoreboard players set @s boost_damage 0
scoreboard players set @s boost_speed 0
scoreboard players set @s boost_revive 0

# b_damage
scoreboard players set @s b_damage 0

##stats
scoreboard players set @s mastery_health 0
scoreboard players set @s mastery_quiver 0
scoreboard players set @s mastery_treasure 0
scoreboard players set @s mastery_damage 0
scoreboard players set @s mastery_speed 0
scoreboard players set @s mastery_revive 0

scoreboard players set @s loot_multiplier 100

##changing the ghost head
execute as @r at @s run loot replace entity @e[type=armor_stand,tag=tutorial_ghost] armor.head loot game:head

# if we have intro trext
execute if entity @s[scores={intro_text=1..}] at @s run function lobby:intro_text/end