#Add scoreboard for regen timer
scoreboard objectives add enderman_timer dummy

summon zombie ~ ~ ~ {Silent:1b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}],Tags:["miniboss","enderman_miniboss","die_between_games","needs_initialization","enemy","miniboss_name"],ArmorItems:[{id:"minecraft:netherite_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}},{id:"minecraft:netherite_leggings",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}},{id:"minecraft:netherite_chestplate",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-161098630,-1416543010,-2022906950,900703265],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjQ0NmQxZTY4YThiMTI5ZDYzZDNjM2IzNjZlYmQ1Y2ZkMWJmMGY3M2U2ZWQzZmU1YmI0NjkxMjJlZTViNWFhMyJ9fX0="}]}}}}],CustomNameVisible:1b}

#Set health
scoreboard players set @e[type=zombie,tag=enderman_miniboss,tag=needs_initialization] enemy_health 700
execute as @e[type=zombie,tag=needs_initialization] at @s run function game:enemy/initialize

##welcoming message
tellraw @a[tag=playing] [{"text":"☠ ","color":"dark_gray"},{"text":"An arbalist has found the ","color":"gray"},{"text":"Ender King","color":"red","bold":true}]
execute as @a[tag=playing] at @s run playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 1 1

execute as @e[type=zombie,tag=enderman_miniboss] run attribute @s generic.follow_range base set 1024
setblock ~ ~ ~ air
kill @s

