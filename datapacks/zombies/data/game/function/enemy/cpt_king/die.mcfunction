##Called when the miniboss is defeated

summon minecraft:item ~ ~ ~ {Tags:["die_between_games","crypt_key","key"],Item:{id:"minecraft:tripwire_hook",components:{"minecraft:enchantments":{levels:{"minecraft:aqua_affinity":1}}},count:1},Glowing:1b,Age:-32162,PickupDelay:1000000}
team join red @e[type=minecraft:item,tag=crypt_key]

##Sound
tellraw @a[tag=playing] [{"text":"☠ ","color":"dark_gray","type":"text"},{"text":"The ","color":"gray","type":"text"},{"text":"Cobalt King","color":"red","bold":true,"type":"text"},{"text":" has been defeated, and they have dropped the ","color":"gray","type":"text"},{"text":"Crypt Key","color":"red","bold":true,"type":"text"},{"text":"!","color":"gray","type":"text"}]


scoreboard players set @a[tag=playing] objective 1
execute as @a[gamemode=adventure,tag=playing] at @s run function game:adventure/new_objective
return 1