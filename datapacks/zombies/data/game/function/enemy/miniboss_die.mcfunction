##Called when a miniboss dies.

function game:enemy/booster_drops

##Offset id is just so that they don't stack.

##Full miniboss drops
execute if entity @s[tag=husk_miniboss] run loot spawn ~ ~ ~ loot game:enemy_drops/husk
execute if entity @s[type=minecraft:skeleton,tag=skeleton_miniboss] run loot spawn ~ ~ ~ loot game:enemy_drops/skeleton_miniboss
execute if entity @s[tag=polar_bear_miniboss,tag=big_polar_bear] run loot spawn ~ ~ ~ loot game:enemy_drops/big_polar_bear

execute if entity @s[tag=blaze_miniboss] run loot spawn ~ ~ ~ loot game:enemy_drops/blaze
execute if entity @s[tag=enderman_miniboss] run loot spawn ~ ~ ~ loot game:enemy_drops/enderman
execute if entity @s[type=minecraft:mooshroom,tag=miniboss] run loot spawn ~ ~ ~ loot game:enemy_drops/mooshroom
execute if entity @s[type=minecraft:illusioner,tag=miniboss,tag=!pug_illagers_miniboss] run loot spawn ~ ~ ~ loot game:enemy_drops/illusioner
execute if entity @s[type=minecraft:spider,tag=miniboss] run loot spawn ~ ~ ~ loot game:enemy_drops/spider_miniboss

##If we're Pug's miniboss
execute if entity @s[tag=pug_illagers_miniboss] run loot spawn ~ ~ ~ loot game:enemy_drops/pug_illagers
execute if entity @s[type=minecraft:illusioner,tag=pug_illagers_miniboss] unless entity @e[type=minecraft:evoker,tag=pug_illagers_miniboss] run function game:enemy/pug_illagers/die
execute if entity @s[type=minecraft:evoker,tag=pug_illagers_miniboss] unless entity @e[type=minecraft:illusioner,tag=pug_illagers_miniboss] run function game:enemy/pug_illagers/die

execute if entity @s[tag=pug_golem_miniboss] run loot spawn ~ ~ ~ loot game:enemy_drops/golem_miniboss

##If we're the forge miniboss
execute if entity @s[tag=cpt_forge_miniboss] run loot spawn ~ ~ ~ loot game:enemy_drops/forge_miniboss
execute if entity @s[tag=cpt_forge_miniboss] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:tripwire_hook",components:{"minecraft:custom_name":'{"bold":true,"color":"gold","italic":false,"text":"Lookout Key"}',"minecraft:custom_data":{key_item:1b,key:"lookout"}},count:1},Motion:[0.0d,0.25d,0.0d],Invulnerable:1b}

execute if entity @s[tag=cpt_tower_miniboss] run loot spawn ~ ~ ~ loot game:enemy_drops/tower_miniboss

execute if entity @s[tag=cpt_king_miniboss] run loot spawn ~ ~ ~ loot game:enemy_drops/king_miniboss
execute if entity @s[tag=cpt_king_miniboss] run function game:enemy/cpt_king/die

execute if entity @s[tag=husk_miniboss] run tellraw @a[tag=playing] [{"text":"☠ ","color":"dark_gray","type":"text"},{"text":"The ","color":"gray","type":"text"},{"text":"Gravedigger","color":"red","bold":true,"type":"text"},{"text":" has been defeated.","color":"gray","type":"text"}]
execute if entity @s[x=0,y=66,z=0,distance=500..,tag=blaze_miniboss] run tellraw @a[tag=playing] [{"text":"☠ ","color":"dark_gray","type":"text"},{"text":"The ","color":"gray","type":"text"},{"text":"Fiery Fiend","color":"red","bold":true,"type":"text"},{"text":" has been defeated.","color":"gray","type":"text"}]
execute if entity @s[tag=skeleton_miniboss] run tellraw @a[tag=playing] [{"text":"☠ ","color":"dark_gray","type":"text"},{"text":"The ","color":"gray","type":"text"},{"text":"Royal Archer","color":"red","bold":true,"type":"text"},{"text":" has been defeated.","color":"gray","type":"text"}]
execute if entity @s[tag=enderman_miniboss] run tellraw @a[tag=playing] [{"text":"☠ ","color":"dark_gray","type":"text"},{"text":"The ","color":"gray","type":"text"},{"text":"Ender King","color":"red","bold":true,"type":"text"},{"text":" has been defeated.","color":"gray","type":"text"}]
execute if entity @s[tag=polar_bear_miniboss,tag=big_polar_bear] run tellraw @a[tag=playing] [{"text":"☠ ","color":"dark_gray","type":"text"},{"text":"The ","color":"gray","type":"text"},{"text":"Head of the Polar Family","color":"red","bold":true,"type":"text"},{"text":" has been defeated.","color":"gray","type":"text"}]
execute if entity @s[type=minecraft:mooshroom,tag=miniboss] run tellraw @a[tag=playing] [{"text":"☠ ","color":"dark_gray","type":"text"},{"text":"The ","color":"gray","type":"text"},{"text":"Furious Fungus","color":"red","bold":true,"type":"text"},{"text":" has been defeated.","color":"gray","type":"text"}]
execute if entity @s[type=minecraft:illusioner,tag=miniboss,tag=!pug_illagers_miniboss] run tellraw @a[tag=playing] [{"text":"☠ ","color":"dark_gray","type":"text"},{"text":"The ","color":"gray","type":"text"},{"text":"Daring Dancer","color":"red","bold":true,"type":"text"},{"text":" has been defeated.","color":"gray","type":"text"}]
execute if entity @s[type=minecraft:spider,tag=miniboss] run tellraw @a[tag=playing] [{"text":"☠ ","color":"dark_gray","type":"text"},{"text":"The ","color":"gray","type":"text"},{"text":"Spider Queen","color":"red","bold":true,"type":"text"},{"text":" has been defeated.","color":"gray","type":"text"}]
execute if entity @s[type=minecraft:slime,tag=miniboss] run tellraw @a[tag=playing] [{"text":"☠ ","color":"dark_gray","type":"text"},{"text":"The ","color":"gray","type":"text"},{"text":"Main Static Splitter","color":"red","bold":true,"type":"text"},{"text":" has been defeated.","color":"gray","type":"text"}]
execute if entity @s[tag=pug_golem_miniboss] run tellraw @a[tag=playing] [{"text":"☠ ","color":"dark_gray","type":"text"},{"text":"The ","color":"gray","type":"text"},{"text":"Gallant Golem","color":"red","bold":true,"type":"text"},{"text":" has been defeated.","color":"gray","type":"text"}]

execute if entity @s[tag=cpt_forge_miniboss] run tellraw @a[tag=playing] [{"text":"☠ ","color":"dark_gray","type":"text"},{"text":"The ","color":"gray","type":"text"},{"text":"Blacksmith","color":"red","bold":true,"type":"text"},{"text":" has been defeated.","color":"gray","type":"text"}]
execute if entity @s[tag=cpt_tower_miniboss] run tellraw @a[tag=playing] [{"text":"☠ ","color":"dark_gray","type":"text"},{"text":"The ","color":"gray","type":"text"},{"text":"Tower Archer","color":"red","bold":true,"type":"text"},{"text":" has been defeated.","color":"gray","type":"text"}]
return 1