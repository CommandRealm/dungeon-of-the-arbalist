##Called to open the door.

execute positioned 2000 60 0 run kill @e[type=area_effect_cloud,sort=nearest,limit=8,tag=door_text]
execute positioned 2000 60 0 run kill @e[type=armor_stand,sort=nearest,limit=8,tag=armor_stand_door_text_marker]
##@e[type=area_effect_cloud,tag=raycast,tag=doorway,sort=nearest,limit=1]
##killing purchase texts

##Marking it as open.
scoreboard players set $opened boss 1


##Boss door
fill 1981 62 -4 1981 69 4 nether_bricks replace polished_blackstone
fill 1981 62 -4 1981 69 4 magma_block replace blackstone
fill 1981 62 -4 1981 69 4 red_nether_bricks replace chiseled_polished_blackstone
##fill 1981 62 -4 1981 69 4 redstone_block

fill 1996 69 -19 2003 62 -19 nether_bricks replace polished_blackstone
fill 1996 69 -19 2003 62 -19 magma_block replace blackstone
fill 1996 69 -19 2003 62 -19 red_nether_bricks replace chiseled_polished_blackstone
##fill 1996 69 -19 2003 62 -19 redstone_block

fill 2018 69 -5 2018 62 3 nether_bricks replace polished_blackstone
fill 2018 69 -5 2018 62 3 magma_block replace blackstone
fill 2018 69 -5 2018 62 3 red_nether_bricks replace chiseled_polished_blackstone
##fill 2018 69 -5 2018 62 3 redstone_block

fill 2004 69 18 1996 62 18 nether_bricks replace polished_blackstone
fill 2004 69 18 1996 62 18 magma_block replace blackstone
fill 2004 69 18 1996 62 18 red_nether_bricks replace chiseled_polished_blackstone
##fill 2004 69 18 1996 62 18 redstone_block

##Making us enter the room
##execute as @p[tag=temporary_tag] run function game:default/door/enter_boss_room