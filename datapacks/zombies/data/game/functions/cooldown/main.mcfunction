##Main cooldown function
scoreboard players remove $end game 1

execute if score $end game matches 90 if score $mode settings matches 0 run function game:default/cooldown/start_cutscene
execute if score $end game matches 90 if score $mode settings matches 1 run function game:adventure/castle/start_cutscene
execute if score $end game matches 90 if score $mode settings matches 2 run function game:adventure/kingdom/start_cutscene


effect give @a[tag=playing] resistance 100000 127 true

execute if entity @a[tag=playing,team=dead] run function game:cooldown/game_over

execute if entity @a[tag=playing,team=won] run function game:cooldown/victory


##spectate
execute if score $end game matches ..90 if score $mode settings matches 0 as @a[tag=playing,gamemode=spectator] at @s run spectate @e[type=armor_stand,tag=dungeon_cutscene_camera,sort=nearest,limit=1]

execute if score $end game matches ..90 if score $mode settings matches 1 as @a[tag=playing,gamemode=spectator,team=won] at @s run spectate @e[type=armor_stand,tag=pug_cutscene_camera_w,sort=nearest,limit=1]
execute if score $end game matches ..90 if score $mode settings matches 1 as @a[tag=playing,gamemode=spectator,team=dead] at @s run spectate @e[type=armor_stand,tag=pug_cutscene_camera_l,sort=nearest,limit=1]

execute if score $end game matches ..90 if score $mode settings matches 2 as @a[tag=playing,gamemode=spectator,team=won] at @s run spectate @e[type=armor_stand,tag=cpt_cutscene_camera_w,sort=nearest,limit=1]
execute if score $end game matches ..90 if score $mode settings matches 2 as @a[tag=playing,gamemode=spectator,team=dead] at @s run spectate @e[type=armor_stand,tag=cpt_cutscene_camera_l,sort=nearest,limit=1]


##gamemode
gamemode spectator @a[tag=playing,gamemode=!spectator,team=dead]


execute if score $end game matches 0 as @a[tag=playing] at @s run function game:show_game_statistics

##If it's on easy or higher, unlock the title
execute if score $end game matches 0 unless score $difficulty settings matches -1 as @a[tag=playing] at @s run function cosmetics:potential_unlock
execute if score $end game matches 0 run function game:end
