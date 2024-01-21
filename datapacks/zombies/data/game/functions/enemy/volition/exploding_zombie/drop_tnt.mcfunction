# called to drop tnt
# removing tnt off our head
item replace entity @s armor.head with air

summon tnt ~ ~1.65 ~ {Invulnerable:1b,Tags:["die_between_games","from_exploding_zombie","temp"],fuse:30,Motion:[0.0d,0.2d,0.0d]}
scoreboard players set @e[type=tnt,tag=temp] attack 30
execute if entity @s[tag=enhanced] run tag @e[type=tnt,tag=temp] add enhanced
tag @e[type=tnt,tag=temp] remove temp