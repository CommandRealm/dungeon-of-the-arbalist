# called to become visible


tag @s add visible

item replace entity @s armor.head with minecraft:player_head[minecraft:profile={id:[I;519484932,-304003122,-1420214208,-914021787],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzI1NTVjYTkwMWFiNjMwMWU3Y2U5Nzg5YjU3ZWJhYjU5MzQ5YzFhY2Q3OTczZjRlYmJkMGMzOGUxMGFkYTFmMSJ9fX0="}]}]
item replace entity @s armor.chest with minecraft:leather_chestplate[minecraft:dyed_color={rgb:14477545}]
# sounds
execute unless entity @s[tag=used_sound] run playsound minecraft:entity.allay.death master @a ~ ~ ~ 1 0.6
execute unless entity @s[tag=used_sound] run playsound minecraft:entity.allay.death master @a ~ ~ ~ 1 0
execute unless entity @s[tag=used_sound] run playsound minecraft:entity.allay.death master @a ~ ~ ~ 1 0.67
execute unless entity @s[tag=used_sound] run playsound minecraft:entity.allay.hurt master @a ~ ~ ~ 1 0
execute unless entity @s[tag=used_sound] run playsound minecraft:entity.allay.hurt master @a ~ ~ ~ 1 0.56
execute unless entity @s[tag=used_sound] run playsound minecraft:entity.blaze.hurt master @a ~ ~ ~ 1 1
execute unless entity @s[tag=used_sound] run playsound minecraft:entity.blaze.hurt master @a ~ ~ ~ 1 0.75
execute unless entity @s[tag=used_sound] run playsound minecraft:entity.enderman.scream master @a ~ ~ ~ 10 0
tag @s add used_sound
# particle
particle minecraft:witch ~ ~ ~ 0.1 0.5 0.1 0.1 100
return 1