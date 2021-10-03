
scoreboard players set $wave game 8
#Summon enemies
summon skeleton 3165 91 114 {Rotation:[0f],Tags:["miniboss","cpt_tower_miniboss","die_between_games","needs_initialization","enemy","miniboss_name","no_boosters"],CustomNameVisible:1b,HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{}]}},{}],ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:leather_leggings",Count:1b},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:3122869}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1603623030,-219263867,-1235579446,-2070807879],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTNhNDdiMTMxZGJjYmMzMGYzY2JlOTY0NzdmYTVlMzcyMjY4MmZhYjk5NWNkMmQyMmY3NWIxNWU5NDgyZmQyMyJ9fX0="}]}}}}]}

#Set health
scoreboard players set @e[type=skeleton,tag=cpt_tower_miniboss,tag=needs_initialization] enemy_health 500
execute as @e[type=skeleton,tag=cpt_tower_miniboss,tag=needs_initialization] at @s run function game:enemy/initialize

execute as @e[type=skeleton,tag=cpt_tower_miniboss] run attribute @s generic.follow_range base set 1024

##welcoming message
tellraw @a[tag=playing] [{"text":"☠ ","color":"dark_gray"},{"text":"An arbalist has found the ","color":"gray"},{"text":"Tower Archer","color":"red","bold":true}]
execute as @a[tag=playing] at @s run playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 1 1