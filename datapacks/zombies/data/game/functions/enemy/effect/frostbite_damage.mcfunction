##Frostbite damage

##Giving ourselves the id of the player who hit us.
scoreboard players operation @s targetting_id = @p[tag=player_who_hit_enemy] id

scoreboard players add @s targetting_dmg 1

##Applying slowness
execute if entity @s[scores={targetting_dmg=1}] run effect give @s slowness 1 0 false
execute if entity @s[scores={targetting_dmg=2}] run effect give @s slowness 2 0 false
execute if entity @s[scores={targetting_dmg=3}] run effect give @s slowness 3 0 false
execute if entity @s[scores={targetting_dmg=4}] run effect give @s slowness 3 1 false
execute if entity @s[scores={targetting_dmg=5}] run effect give @s slowness 4 1 false
execute if entity @s[scores={targetting_dmg=6}] run effect give @s slowness 5 1 false
execute if entity @s[scores={targetting_dmg=7}] run effect give @s slowness 6 1 false

##Frostbitten tag
tag @s add frostbitten