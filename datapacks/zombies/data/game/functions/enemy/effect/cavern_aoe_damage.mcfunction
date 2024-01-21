##earth aoe damage

##temporary tag
tag @s add temporary_tag

##Dealing aoe damage
execute as @e[tag=enemy,distance=..5,tag=!temporary_tag] at @s run effect give @s luck 1 38 true
execute as @e[tag=enemy,distance=..5,tag=!temporary_tag] at @s run effect give @s instant_damage 1 0 true
execute as @e[tag=enemy,distance=..5,tag=!temporary_tag] at @s run effect give @s instant_health 1 0 true
execute as @e[tag=enemy,distance=..5,tag=!temporary_tag,nbt={Invulnerable:0b}] at @s run function game:enemy/take_damage

##removing temporary tag
tag @s remove temporary_tag