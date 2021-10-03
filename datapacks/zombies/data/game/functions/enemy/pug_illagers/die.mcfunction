##Called when the miniboss is defeated

summon item 4963 100 67 {Tags:["die_between_games","pink_key","key"],Item:{id:"minecraft:tripwire_hook",Count:1b,tag:{Enchantments:[{id:"aqua_affinity",lvl:1}]}},Glowing:1b,Age:-32162,PickupDelay:1000000}
team join light_purple @e[type=item,tag=pink_key]

##removing vexes
kill @e[type=vex,tag=enemy]

##Sound
tellraw @a[tag=playing] [{"text":"☠ ","color":"dark_gray"},{"text":"The ","color":"gray"},{"text":"Dangerous Duo","color":"red","bold":true},{"text":" has been defeated, and they have dropped the ","color":"gray"},{"text":"Pink Key","color":"light_purple","bold":true},{"text":"!","color":"gray"}]


