scoreboard players add @s cpt_forge_timer 1
#execute unless entity @s[x=2984,y=77,z=46,dx=30,dy=30,dz=30] run kill @s
execute if score @s cpt_forge_timer matches 100.. run kill @s
