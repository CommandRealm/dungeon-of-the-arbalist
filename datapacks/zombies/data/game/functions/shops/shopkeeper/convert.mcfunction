##called to convert ourself to an enemy


item replace entity @s[type=pillager] weapon.mainhand with crossbow
item replace entity @s[type=vindicator] weapon.mainhand with iron_axe

tag @s add enemy
scoreboard players set @s enemy_health 300
scoreboard players set @s enemy_loot_table -1
data modify entity @s NoAI set value 0b
tag @s add default_name

function game:enemy/initialize