# called to drop tnt
# removing tnt off our head
item replace entity @s armor.head with minecraft:air

summon minecraft:tnt ~ ~1.65 ~ {Invulnerable:1b,Tags:["die_between_games","from_exploding_zombie","temp"],Motion:[0.0d,0.2d,0.0d],fuse:30s}
scoreboard players set @e[type=minecraft:tnt,tag=temp] attack 30
tag @e[type=minecraft:tnt,tag=temp] remove temp
return 1