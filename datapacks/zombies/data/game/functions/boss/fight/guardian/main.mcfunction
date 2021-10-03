##Main guardian function.

##Fixing the red glass. (100 is the cooldown of the attack, which is 80, minus a second.)
execute if score $attack_id boss matches 2 if score $active_attack boss matches 0 if score $cooldown boss matches 80 run function game:boss/fight/guardian/floor/reset_floor

##tping guardian
execute if score $active_attack boss matches 0 as @e[type=elder_guardian,tag=boss] at @s run tp @s ~ ~ ~ facing entity @p[tag=playing,tag=in_boss_room,gamemode=adventure,team=game]

##If we're in phase 2
execute if score $phase boss matches 2 run function game:boss/fight/guardian/phase_2