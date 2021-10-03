##called to find the id of the player who shot us

##tag
tag @s add hit_enemy

execute store result score @s calculate run data get entity @s ActiveEffects[{Id:30b}].Amplifier 1


execute as @a[tag=playing] at @s if score @s id = @e[tag=hit_enemy,sort=nearest,limit=1] calculate run tag @s add player_who_hit_enemy

tag @s remove hit_enemy