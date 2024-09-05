##Called when the miniboss is defeated

summon minecraft:item 4963 100 67 {Tags:["die_between_games","pink_key","key"],Item:{id:"minecraft:tripwire_hook",components:{"minecraft:enchantments":{levels:{"minecraft:aqua_affinity":1}}},count:1},Glowing:1b,Age:-32162,PickupDelay:1000000}
team join light_purple @e[type=minecraft:item,tag=pink_key]

##removing vexes
kill @e[type=minecraft:vex,tag=enemy]

##Sound
tellraw @a[tag=playing] [{"text":"☠ ","color":"dark_gray","type":"text"},{"text":"The ","color":"gray","type":"text"},{"text":"Dangerous Duo","color":"red","bold":true,"type":"text"},{"text":" has been defeated, and they have dropped the ","color":"gray","type":"text"},{"text":"Pink Key","color":"light_purple","bold":true,"type":"text"},{"text":"!","color":"gray","type":"text"}]



return 1