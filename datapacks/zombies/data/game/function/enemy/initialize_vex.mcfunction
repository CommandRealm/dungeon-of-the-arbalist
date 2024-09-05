##Called by a vex that needs to be initialized.


##scores
scoreboard players set @s enemy_health 1
scoreboard players set @s enemy_loot_table 2

attribute @s minecraft:generic.attack_damage base set 0.1
item replace entity @s weapon.mainhand with minecraft:iron_sword[minecraft:attribute_modifiers={modifiers:[{id:"minecraft:00000023-0000-0023-0000-002300000023",amount:1.0d}]}]

##tags
tag @s add needs_initialization
tag @s add default_name
tag @s add enemy
tag @s add vex

tag @s add on_death_timer
scoreboard players set @s death_timer 200

##custom name visible
data modify entity @s CustomNameVisible set value 1b

##function
function game:enemy/initialize
return 1