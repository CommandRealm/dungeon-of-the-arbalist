##called when the cutscene is over.
execute at @a[tag=playing] run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 100000 0.5
execute at @a[tag=playing] run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 100000 0.594604
execute at @a[tag=playing] run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 100000 0.749154
execute at @a[tag=playing] run stopsound @a * music.nether.nether_wastes
execute at @a[tag=playing] run scoreboard players set $cutscene game 0
execute at @a[tag=playing] run scoreboard players set $time game 999
function game:mechanics/active_efficient
tp @a[tag=playing] 3145 70 -7 15 10
gamemode adventure @a[tag=playing]

##Killing enemy
kill @e[type=pillager,tag=cutscene_entity]
kill @e[type=armor_stand,tag=cutscene_upgrade]
kill @e[type=armor_stand,tag=dungeon_cutscene_camera]

tag @a[tag=playing] add mechanics

scoreboard players reset @a try_purchase

##Starting upgrades
execute positioned 3145 71 -3 run function game:mechanics/upgrade/create/lightning_upgrade_spot
execute positioned 3147 71 -4 run function game:mechanics/upgrade/create/water_upgrade_spot
execute positioned 3143 71 -4 run function game:mechanics/upgrade/create/earth_upgrade_spot
execute as @e[type=marker,tag=upgrade_spot,tag=inactive] at @s run function game:mechanics/upgrade/activate_upgrade_spot

function game:adventure/start_gameplay