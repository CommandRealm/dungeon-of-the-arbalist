##Called to open the door.

execute positioned 2000 60 0 run kill @e[type=minecraft:area_effect_cloud,tag=door_text,sort=nearest,limit=8]
execute positioned 2000 60 0 run kill @e[type=minecraft:armor_stand,tag=armor_stand_door_text_marker,sort=nearest,limit=8]
##@e[type=marker,tag=raycast,tag=doorway,sort=nearest,limit=1]
##killing purchase texts

##Marking it as open.
scoreboard players set $opened boss 1


##Boss door
fill 1981 62 -4 1981 69 4 minecraft:nether_bricks replace minecraft:polished_blackstone
fill 1981 62 -4 1981 69 4 minecraft:magma_block replace minecraft:blackstone
fill 1981 62 -4 1981 69 4 minecraft:red_nether_bricks replace minecraft:chiseled_polished_blackstone
##fill 1981 62 -4 1981 69 4 redstone_block

fill 1996 69 -19 2003 62 -19 minecraft:nether_bricks replace minecraft:polished_blackstone
fill 1996 69 -19 2003 62 -19 minecraft:magma_block replace minecraft:blackstone
fill 1996 69 -19 2003 62 -19 minecraft:red_nether_bricks replace minecraft:chiseled_polished_blackstone
##fill 1996 69 -19 2003 62 -19 redstone_block

fill 2018 69 -5 2018 62 3 minecraft:nether_bricks replace minecraft:polished_blackstone
fill 2018 69 -5 2018 62 3 minecraft:magma_block replace minecraft:blackstone
fill 2018 69 -5 2018 62 3 minecraft:red_nether_bricks replace minecraft:chiseled_polished_blackstone
##fill 2018 69 -5 2018 62 3 redstone_block

fill 2004 69 18 1996 62 18 minecraft:nether_bricks replace minecraft:polished_blackstone
fill 2004 69 18 1996 62 18 minecraft:magma_block replace minecraft:blackstone
fill 2004 69 18 1996 62 18 minecraft:red_nether_bricks replace minecraft:chiseled_polished_blackstone
##fill 2004 69 18 1996 62 18 redstone_block

##Making us enter the room
##execute as @p[tag=temporary_tag] run function game:default/door/enter_boss_room
return 1