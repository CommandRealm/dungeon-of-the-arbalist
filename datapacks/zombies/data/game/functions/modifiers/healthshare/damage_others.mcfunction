# called to damage players

scoreboard players remove @p[tag=temp] damage_taken 1
damage @a[tag=!temp] 1

execute if entity @p[tag=temp,scores={damage_taken=1..}] run function game:modifiers/healthshare/damage_others