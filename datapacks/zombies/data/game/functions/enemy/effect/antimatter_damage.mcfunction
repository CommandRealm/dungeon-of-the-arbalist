##Frostbite damage

##Giving ourselves the id of the player who hit us.
scoreboard players operation @s targetting_id = @p[tag=player_who_hit_enemy] id

scoreboard players add @s targetting_dmg 10

##Capping the damage
scoreboard players set @s[scores={targetting_dmg=61..}] targetting_dmg 60

scoreboard players operation @s extra_damage += @s targetting_dmg

##Antimatter tag tag
tag @s add antimatter