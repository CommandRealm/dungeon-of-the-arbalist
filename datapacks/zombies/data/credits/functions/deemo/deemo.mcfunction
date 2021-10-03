scoreboard players add @e[tag=deemo,type=armor_stand] deemo_arms 1
execute as @e[tag=deemo,type=armor_stand] at @s if score @s deemo_arms matches 1..45 run function credits:deemo/arms_in
execute as @e[tag=deemo,type=armor_stand] at @s if score @s deemo_arms matches 46..90 run function credits:deemo/arms_out
execute as @e[tag=deemo,type=armor_stand] at @s if score @s deemo_arms matches 91 run scoreboard players set @s deemo_arms 1