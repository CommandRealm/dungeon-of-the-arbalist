##Called when area_2 is opened

tag @e[type=marker,tag=area_8] add unlocked
tag @e[type=marker,tag=area_8,sort=random,limit=3] add temporary_tag
function game:enemy/spawn_enemy



##Upgrade
execute positioned 3127 88.5 175 run function game:mechanics/upgrade/create/darkness_upgrade_spot
execute positioned 3026 90.5 152 run function game:mechanics/upgrade/create/nature_upgrade_spot
execute positioned 3039 91.5 98 run function game:mechanics/upgrade/create/air_upgrade_spot
execute as @e[type=marker,tag=upgrade_spot,tag=inactive] at @s run function game:mechanics/upgrade/activate_upgrade_spot



##Marking doorways.
execute if block 3035 92 170 oak_planks unless entity @e[type=area_effect_cloud,x=3035.0,y=92,z=170,distance=..5,tag=doorway] run summon marker 3035.0 92 170 {Tags:["doorway","die_between_games","default_door","raycast","needs_adjustments"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute as @e[type=marker,tag=doorway] at @s unless score @s price_left matches 0.. run scoreboard players set @s price_left 200
execute positioned 3035.0 92 170 as @e[type=marker,tag=doorway,limit=1,sort=nearest,tag=needs_adjustments] at @s run function game:door/get_price_increment
tag @e[type=marker,tag=doorway,limit=1,sort=nearest,tag=needs_adjustments] remove needs_adjustments

execute if block 3105 90 189 oak_planks unless entity @e[type=marker,x=3105,y=90,z=189,tag=doorway,distance=..5] run summon marker 3105 90 189.0 {Tags:["doorway","die_between_games","default_door","raycast"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute as @e[type=marker,tag=doorway] at @s unless score @s price_left matches 0.. run scoreboard players set @s price_left 300
execute as @e[type=marker,tag=doorway] at @s unless score @s price_increment matches 0.. run function game:door/get_price_increment




tag @e[type=marker,tag=doorway] add raycast

##Updating name
execute as @e[type=marker,tag=doorway] at @s run function game:door/update_name

