#Add scoreboard
scoreboard objectives add cpt_king_timer dummy

scoreboard players set $wave game 8

#Summon enemies
summon zombie 3089 92 175 {Rotation:[0f],Tags:["miniboss","cpt_king_miniboss","die_between_games","needs_initialization","enemy","miniboss_name","pool_tp","cpt_king_phase1","no_boosters"],PersistenceRequired:1b,CustomNameVisible:1b,HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{Enchantments:[{}]}},{}],ArmorItems:[{id:"minecraft:golden_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:depth_strider",lvl:1}]}},{id:"minecraft:golden_leggings",Count:1b},{id:"minecraft:golden_chestplate",Count:1b},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1122684591,-655602890,-1588126521,-287951236],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTU1ODJlZDUxMmE4Y2VhOWIxN2ZmYzMxY2ExMmI4NmYyYWJjY2Y4M2E2MjJmYjdkMTViNWYxNzFmNTFiYjY0In19fQ=="}]}}}}]}

#Set health
scoreboard players set @e[type=zombie,tag=cpt_king_miniboss,tag=needs_initialization] enemy_health 2000
execute as @e[type=zombie,tag=cpt_king_miniboss,tag=needs_initialization] at @s run function game:enemy/initialize

execute as @e[type=zombie,tag=cpt_king_miniboss] run attribute @s generic.follow_range base set 1024
execute as @e[type=zombie,tag=cpt_king_miniboss] run attribute @s generic.movement_speed base set 0.315
execute as @e[type=zombie,tag=cpt_king_miniboss] run attribute @s generic.knockback_resistance base set 1.0
execute as @e[type=zombie,tag=cpt_king_miniboss] run attribute @s generic.attack_damage base set 1

#Set half health
scoreboard players set 2 cpt_king_timer 2
scoreboard players operation $half_health cpt_king_timer = @e[type=zombie,tag=cpt_king_miniboss,limit=1] enemy_max_health
scoreboard players operation $half_health cpt_king_timer /= 2 cpt_king_timer

scoreboard players set $king_boss game 1

##welcoming message
tellraw @a[tag=playing] [{"text":"☠ ","color":"dark_gray"},{"text":"An arbalist has found the ","color":"gray"},{"text":"Cobalt King","color":"red","bold":true}]
execute as @a[tag=playing] at @s run playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 1 1