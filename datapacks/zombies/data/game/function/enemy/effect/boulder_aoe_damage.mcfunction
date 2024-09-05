##earth aoe damage

##temporary tag
tag @s add temporary_tag

##Dealing aoe damage
execute as @e[distance=..5,tag=enemy,tag=!temporary_tag] at @s run effect give @s minecraft:luck 1 19 true
execute as @e[distance=..5,tag=enemy,tag=!temporary_tag] at @s run effect give @s minecraft:instant_damage 1 0 true
execute as @e[distance=..5,tag=enemy,tag=!temporary_tag] at @s run effect give @s minecraft:instant_health 1 0 true
execute as @e[distance=..5,tag=enemy,tag=!temporary_tag,nbt={Invulnerable:0b}] at @s run function game:enemy/take_damage

##removing temporary tag
tag @s remove temporary_tag
return 1