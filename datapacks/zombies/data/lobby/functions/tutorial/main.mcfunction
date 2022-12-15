#Character limit is 38
#Time per blurb is x seconds given by Falcon plus 2 seconds buffer time.
scoreboard players add $timer tutorial 1

#Display all 1/3s
execute if score $timer tutorial matches 1 as @e[type=area_effect_cloud,tag=tutorial,tag=tutorial_text] run function lobby:tutorial/1_3

#Display 2/3 for 1a
execute if score $timer tutorial matches 161 as @e[type=area_effect_cloud,tag=tutorial,tag=tutorial_text,tag=tutorial_1a] run function lobby:tutorial/1a_2
#Display 2/3 for 1b
execute if score $timer tutorial matches 201 as @e[type=area_effect_cloud,tag=tutorial,tag=tutorial_text,tag=tutorial_1b] run function lobby:tutorial/1b_2
#Display 2/3 for 2a
execute if score $timer tutorial matches 221 as @e[type=area_effect_cloud,tag=tutorial,tag=tutorial_text,tag=tutorial_2a] run function lobby:tutorial/2a_2
#Display 2/3 for 2b
execute if score $timer tutorial matches 181 as @e[type=area_effect_cloud,tag=tutorial,tag=tutorial_text,tag=tutorial_2b] run function lobby:tutorial/2b_2
#Display 2/3 for 3a
execute if score $timer tutorial matches 221 as @e[type=area_effect_cloud,tag=tutorial,tag=tutorial_text,tag=tutorial_3a] run function lobby:tutorial/3a_2
#Display 2/3 for 3b
execute if score $timer tutorial matches 221 as @e[type=area_effect_cloud,tag=tutorial,tag=tutorial_text,tag=tutorial_3b] run function lobby:tutorial/3b_2
#Display 2/3 for 4a
execute if score $timer tutorial matches 201 as @e[type=area_effect_cloud,tag=tutorial,tag=tutorial_text,tag=tutorial_4a] run function lobby:tutorial/4a_2
#Display 2/3 for 4b
execute if score $timer tutorial matches 221 as @e[type=area_effect_cloud,tag=tutorial,tag=tutorial_text,tag=tutorial_4b] run function lobby:tutorial/4b_2

#Display 3/3 for 1a
execute if score $timer tutorial matches 401 as @e[type=area_effect_cloud,tag=tutorial,tag=tutorial_text,tag=tutorial_1a] run function lobby:tutorial/1a_3
#Display 3/3 for 1b
execute if score $timer tutorial matches 461 as @e[type=area_effect_cloud,tag=tutorial,tag=tutorial_text,tag=tutorial_1b] run function lobby:tutorial/1b_3
#Display 3/3 for 2a
execute if score $timer tutorial matches 441 as @e[type=area_effect_cloud,tag=tutorial,tag=tutorial_text,tag=tutorial_2a] run function lobby:tutorial/2a_3
#Display 3/3 for 3b
execute if score $timer tutorial matches 361 as @e[type=area_effect_cloud,tag=tutorial,tag=tutorial_text,tag=tutorial_3b] run function lobby:tutorial/3b_3
#Display 3/3 for 4b
execute if score $timer tutorial matches 441 as @e[type=area_effect_cloud,tag=tutorial,tag=tutorial_text,tag=tutorial_4b] run function lobby:tutorial/4b_3

#Reset timer
execute if score $timer tutorial matches 621.. run scoreboard players set $timer tutorial 0


##Mechanics
execute if score $game state matches 0 run function game:mechanics/main
execute if score $game state matches 1 if score $cutscene game matches 1 run function game:mechanics/main

##Counting tutorial dummies
execute store result score $enemies tutorial if entity @e[type=skeleton,tag=enemy,tag=tutorial_dummy]
execute if score $enemies tutorial matches ..2 run function lobby:tutorial/summon_dummies

##Running death timer
execute if score $game state matches 0 run scoreboard players remove @e[scores={death_timer=1..}] death_timer 1
execute if score $game state matches 0 as @e[scores={death_timer=..0}] at @s run function game:death_timer_over

##If there is no upgrade
execute unless entity @e[type=marker,tag=upgrade_spot,x=0,y=66,z=0,distance=..500] unless score $upgrade tutorial matches 1.. run scoreboard players set $upgrade tutorial 50
execute if score $upgrade tutorial matches 1.. run function lobby:tutorial/upgrade/main


execute unless entity @e[type=blaze,x=0,y=66,z=0,distance=..500] run function lobby:tutorial/summon_blaze

##Clearing boosters
clear @a[tag=mechanics,x=0,y=66,z=0,distance=..500] red_dye
clear @a[tag=mechanics,x=0,y=66,z=0,distance=..500] orange_dye
clear @a[tag=mechanics,x=0,y=66,z=0,distance=..500] yellow_dye
clear @a[tag=mechanics,x=0,y=66,z=0,distance=..500] lime_dye
clear @a[tag=mechanics,x=0,y=66,z=0,distance=..500] light_blue_dye
clear @a[tag=mechanics,x=0,y=66,z=0,distance=..500] purple_dye

##If there is no summoned stat booster
execute unless entity @e[type=item,x=11,y=83,z=-59,distance=..1] run function lobby:tutorial/spawn_booster

##Leaving tutorial
execute as @a[x=4,y=89,z=21,distance=..10.5,tag=tutorial] at @s run function lobby:tutorial/leave_tutorial

##Killing dropped items
execute as @a[tag=tutorial] at @s as @e[type=item,distance=..5,nbt={Age:0s},tag=!dont_die_in_tutorial,tag=!shop_item] unless entity @s[nbt={Item:{tag:{treasure:1}}}] run kill @s

##If there is no tutorial shopkeeper, summon one
execute unless entity @e[type=pillager,tag=tutorial_shopkeeper] run function lobby:tutorial/summon_shop

##Ghost particles
particle cloud 7 84 -63 0.15 0.25 0.15 0.1 1

##Wave indicators
scoreboard players remove $wave_time tutorial 1
execute if score $wave_time tutorial matches ..0 run function lobby:tutorial/change_wave_indicator