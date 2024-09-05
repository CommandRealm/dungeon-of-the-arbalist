#Add scoreboard for regen timer
scoreboard objectives add enderman_timer dummy

summon minecraft:zombie ~ ~ ~ {Silent:1b,Tags:["miniboss","enderman_miniboss","die_between_games","needs_initialization","enemy","miniboss_name"],ArmorItems:[{id:"minecraft:netherite_boots",components:{"minecraft:enchantments":{levels:{"minecraft:protection":1}}},count:1},{id:"minecraft:netherite_leggings",components:{"minecraft:enchantments":{levels:{"minecraft:protection":1}}},count:1},{id:"minecraft:netherite_chestplate",components:{"minecraft:enchantments":{levels:{"minecraft:protection":1}}},count:1},{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;-161098630,-1416543010,-2022906950,900703265],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjQ0NmQxZTY4YThiMTI5ZDYzZDNjM2IzNjZlYmQ1Y2ZkMWJmMGY3M2U2ZWQzZmU1YmI0NjkxMjJlZTViNWFhMyJ9fX0="}]}},count:1}],CustomNameVisible:1b,active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:1000000,show_particles:0b}],attributes:[{id:"minecraft:generic.movement_speed",base:0.4d}]}

#Set health
scoreboard players set @e[type=minecraft:zombie,tag=enderman_miniboss,tag=needs_initialization] enemy_health 700
execute as @e[type=minecraft:zombie,tag=needs_initialization] at @s run function game:enemy/initialize

##welcoming message
tellraw @a[tag=playing] [{"text":"☠ ","color":"dark_gray","type":"text"},{"text":"An arbalist has found the ","color":"gray","type":"text"},{"text":"Ender King","color":"red","bold":true,"type":"text"}]
execute as @a[tag=playing] at @s run playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 1 1

execute as @e[type=minecraft:zombie,tag=enderman_miniboss] run attribute @s minecraft:generic.follow_range base set 1024
setblock ~ ~ ~ minecraft:air
kill @s


return 1