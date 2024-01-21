##antumbra extra damage

##Setting scores
execute unless score @s e_damage_timer matches 1.. run tag @s add skip_one_extra_damage
scoreboard players set @s e_damage_timer 100


scoreboard players set @s extra_damage 20