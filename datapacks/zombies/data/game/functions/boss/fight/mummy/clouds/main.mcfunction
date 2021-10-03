##Main clouds function

##Before it strikes
execute if score $attack boss matches 15.. run function game:boss/fight/mummy/clouds/prelock
execute if score $attack boss matches ..14 run function game:boss/fight/mummy/clouds/postlock

##facing the player
execute as @e[type=wither_skeleton,tag=boss,limit=1] at @s run tp @s ~ ~ ~ facing entity @p[tag=playing,team=game]