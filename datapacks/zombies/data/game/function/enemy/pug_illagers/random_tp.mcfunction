#Random number for tp
scoreboard players set $mod pug_illagers 5
summon minecraft:area_effect_cloud ~ ~1 ~ {Tags:["pug_illagers"],Age:1}
execute store result score $pos pug_illagers run data get entity @e[type=minecraft:area_effect_cloud,tag=pug_illagers,limit=1] UUID[0] 1
scoreboard players operation $pos pug_illagers %= $mod pug_illagers
execute if score $pos pug_illagers = $old_pos pug_illagers run scoreboard players add $pos pug_illagers 1
execute if score $pos pug_illagers matches 5.. run scoreboard players set $pos pug_illagers 0
kill @e[type=minecraft:area_effect_cloud,tag=pug_illagers]

execute as @e[tag=pug_illagers_miniboss] at @s run particle minecraft:witch ~ ~ ~ .1 .5 .1 0 5 force
execute as @e[tag=pug_illagers_miniboss] at @s run playsound minecraft:entity.illusioner.ambient master @a ~ ~ ~ 5 1

execute if score $pos pug_illagers matches 0 run tp @e[tag=pug_illagers_miniboss,tag=pug_illagers_cutscene,sort=random,limit=1] 4956 107 66 facing entity @p[gamemode=adventure]
execute if score $pos pug_illagers matches 0 run tp @e[tag=pug_illagers_miniboss,tag=pug_illagers_cutscene,sort=random,limit=1] 4966 105 65 facing entity @p[gamemode=adventure]
execute if score $pos pug_illagers matches 1 run tp @e[tag=pug_illagers_miniboss,tag=pug_illagers_cutscene,sort=random,limit=1] 4963 106 70 facing entity @p[gamemode=adventure]
execute if score $pos pug_illagers matches 1 run tp @e[tag=pug_illagers_miniboss,tag=pug_illagers_cutscene,sort=random,limit=1] 4970 107 66 facing entity @p[gamemode=adventure]
execute if score $pos pug_illagers matches 2 run tp @e[tag=pug_illagers_miniboss,tag=pug_illagers_cutscene,sort=random,limit=1] 4967 105 60 facing entity @p[gamemode=adventure]
execute if score $pos pug_illagers matches 2 run tp @e[tag=pug_illagers_miniboss,tag=pug_illagers_cutscene,sort=random,limit=1] 4960 105 65 facing entity @p[gamemode=adventure]
execute if score $pos pug_illagers matches 3 run tp @e[tag=pug_illagers_miniboss,tag=pug_illagers_cutscene,sort=random,limit=1] 4956 107 59 facing entity @p[gamemode=adventure]
execute if score $pos pug_illagers matches 3 run tp @e[tag=pug_illagers_miniboss,tag=pug_illagers_cutscene,sort=random,limit=1] 4970 107 68 facing entity @p[gamemode=adventure]
execute if score $pos pug_illagers matches 4 run tp @e[tag=pug_illagers_miniboss,tag=pug_illagers_cutscene,sort=random,limit=1] 4966 106 76 facing entity @p[gamemode=adventure]
execute if score $pos pug_illagers matches 4 run tp @e[tag=pug_illagers_miniboss,tag=pug_illagers_cutscene,sort=random,limit=1] 4956 107 65 facing entity @p[gamemode=adventure]

scoreboard players operation $old_pos pug_illagers = $pos pug_illagers
return 1