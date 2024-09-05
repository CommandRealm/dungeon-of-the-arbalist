##earth aoe damage

##temporary tag
tag @s add temporary_tag

##Dealing aoe damage
execute as @e[distance=..5,tag=enemy,tag=!temporary_tag] at @s run effect give @s minecraft:slowness 5 0 false

##removing temporary tag
tag @s remove temporary_tag
return 1