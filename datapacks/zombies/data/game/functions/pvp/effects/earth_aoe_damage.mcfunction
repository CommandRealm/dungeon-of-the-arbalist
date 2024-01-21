# called for aoe earth damage


##temporary tag
tag @s add temporary_tag

##Dealing aoe damage
execute as @a[gamemode=adventure,distance=..5,tag=!temporary_tag] at @s run effect give @s instant_damage 0 1 true


##removing temporary tag
tag @s remove temporary_tag