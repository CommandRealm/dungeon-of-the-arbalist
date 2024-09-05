
scoreboard players set $wave game 8
#Summon enemies
summon minecraft:skeleton 3165 91 114 {Rotation:[0.0f],Tags:["miniboss","cpt_tower_miniboss","die_between_games","needs_initialization","enemy","miniboss_name","no_boosters"],CustomNameVisible:1b,HandItems:[{id:"minecraft:bow",components:{"minecraft:enchantment_glint_override":1b},count:1},{}],ArmorItems:[{id:"minecraft:iron_boots",count:1},{id:"minecraft:leather_leggings",count:1},{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":{rgb:3122869}},count:1},{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;1603623030,-219263867,-1235579446,-2070807879],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTNhNDdiMTMxZGJjYmMzMGYzY2JlOTY0NzdmYTVlMzcyMjY4MmZhYjk5NWNkMmQyMmY3NWIxNWU5NDgyZmQyMyJ9fX0="}]}},count:1}]}

#Set health
scoreboard players set @e[type=minecraft:skeleton,tag=cpt_tower_miniboss,tag=needs_initialization] enemy_health 500
execute as @e[type=minecraft:skeleton,tag=cpt_tower_miniboss,tag=needs_initialization] at @s run function game:enemy/initialize

execute as @e[type=minecraft:skeleton,tag=cpt_tower_miniboss] run attribute @s minecraft:generic.follow_range base set 1024

##welcoming message
tellraw @a[tag=playing] [{"text":"☠ ","color":"dark_gray","type":"text"},{"text":"An arbalist has found the ","color":"gray","type":"text"},{"text":"Tower Archer","color":"red","bold":true,"type":"text"}]
execute as @a[tag=playing] at @s run playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 1 1
return 1