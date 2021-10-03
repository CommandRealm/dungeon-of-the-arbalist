##Main postfight function.
execute if score $portal boss matches 1.. run function game:boss/postfight/portal_cooldown

##Filling the portal blocks.
execute if score $portal boss matches ..0 if score $mode settings matches 0 at @e[type=area_effect_cloud,tag=start_boss_fight] run fill ~1.6 ~-2 ~1.6 ~-1.6 ~-2 ~-1.6 end_gateway{Age:220L} replace
execute if score $portal boss matches ..0 if score $mode settings matches 1 run fill 4976 77 65 4979 77 68 end_gateway{Age:220L} replace
execute if score $portal boss matches ..0 if score $mode settings matches 2 run fill 3158 51 259 3162 51 263 end_gateway{Age:220L} replace


##Making players who enter the portal win.
execute if score $portal boss matches ..0 if score $mode settings matches 0 at @e[type=area_effect_cloud,tag=start_boss_fight] positioned ~-1.5 ~-2 ~-1.5 as @a[tag=playing,team=game,dx=3,dy=0,dz=3] at @s run function game:win
execute if score $portal boss matches ..0 if score $mode settings matches 1 as @a[x=4976,y=76,z=65,dx=3,dz=3,dy=1,tag=playing,team=game] at @s run function game:win
execute if score $portal boss matches ..0 if score $mode settings matches 2 as @a[x=3158,y=51,z=259,dx=4,dz=4,dy=1,tag=playing,team=game] at @s run function game:win

##Zombie summons
scoreboard players remove $spawn boss 1
execute if score $spawn boss matches ..0 run function game:boss/fight/spawn_enemy