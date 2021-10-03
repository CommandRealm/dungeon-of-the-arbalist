##Called when the miniboss is defeated

summon item ~ ~ ~ {Tags:["die_between_games","crypt_key","key"],Item:{id:"minecraft:tripwire_hook",Count:1b,tag:{Enchantments:[{id:"aqua_affinity",lvl:1}]}},Glowing:1b,Age:-32162,PickupDelay:1000000}
team join red @e[type=item,tag=crypt_key]

##Sound
tellraw @a[tag=playing] [{"text":"☠ ","color":"dark_gray"},{"text":"The ","color":"gray"},{"text":"Cobalt King","color":"red","bold":true},{"text":" has been defeated, and they have dropped the ","color":"gray"},{"text":"Crypt Key","color":"red","bold":true},{"text":"!","color":"gray"}]


scoreboard players set @a[tag=playing] objective 1
execute as @a[tag=playing,gamemode=adventure] at @s run function game:adventure/new_objective