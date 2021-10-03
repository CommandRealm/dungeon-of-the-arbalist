##earth aoe damage

##temporary tag
tag @s add temporary_tag

##Dealing aoe damage
execute as @e[tag=enemy,distance=..5,tag=!temporary_tag] at @s run effect give @s slowness 5 0 false

##removing temporary tag
tag @s remove temporary_tag