##Called when a miniboss dies.

function game:enemy/booster_drops

##Offset id is just so that they don't stack.

##Full miniboss drops
execute if entity @s[tag=husk_miniboss] run loot spawn ~ ~ ~ loot game:enemy_drops/husk
execute if entity @s[tag=skeleton_miniboss,type=skeleton] run loot spawn ~ ~ ~ loot game:enemy_drops/skeleton_miniboss
execute if entity @s[tag=polar_bear_miniboss,tag=big_polar_bear] run loot spawn ~ ~ ~ loot game:enemy_drops/big_polar_bear

execute if entity @s[tag=blaze_miniboss] run loot spawn ~ ~ ~ loot game:enemy_drops/blaze
execute if entity @s[tag=enderman_miniboss] run loot spawn ~ ~ ~ loot game:enemy_drops/enderman
execute if entity @s[tag=miniboss,type=mooshroom] run loot spawn ~ ~ ~ loot game:enemy_drops/mooshroom
execute if entity @s[tag=miniboss,type=illusioner,tag=!pug_illagers_miniboss] run loot spawn ~ ~ ~ loot game:enemy_drops/illusioner
execute if entity @s[tag=miniboss,type=spider] run loot spawn ~ ~ ~ loot game:enemy_drops/spider_miniboss

##If we're Pug's miniboss
execute if entity @s[tag=pug_illagers_miniboss] run loot spawn ~ ~ ~ loot game:enemy_drops/pug_illagers
execute if entity @s[tag=pug_illagers_miniboss,type=illusioner] unless entity @e[type=evoker,tag=pug_illagers_miniboss] run function game:enemy/pug_illagers/die
execute if entity @s[tag=pug_illagers_miniboss,type=evoker] unless entity @e[type=illusioner,tag=pug_illagers_miniboss] run function game:enemy/pug_illagers/die

execute if entity @s[tag=pug_golem_miniboss] run loot spawn ~ ~ ~ loot game:enemy_drops/golem_miniboss

##If we're the forge miniboss
execute if entity @s[tag=cpt_forge_miniboss] run loot spawn ~ ~ ~ loot game:enemy_drops/forge_miniboss
execute if entity @s[tag=cpt_forge_miniboss] run summon item ~ ~ ~ {Item:{id:"minecraft:tripwire_hook",Count:1b,tag:{key_item:1b,key:"lookout",display:{Name:'[{"text":"Lookout Key","italic":false,"color":"gold","bold":true}]'}}},Motion:[0.0d,0.25d,0.0d],Invulnerable:1b}

execute if entity @s[tag=cpt_tower_miniboss] run loot spawn ~ ~ ~ loot game:enemy_drops/tower_miniboss

execute if entity @s[tag=cpt_king_miniboss] run loot spawn ~ ~ ~ loot game:enemy_drops/king_miniboss
execute if entity @s[tag=cpt_king_miniboss] run function game:enemy/cpt_king/die

execute if entity @s[tag=husk_miniboss] run tellraw @a[tag=playing] [{"text":"☠ ","color":"dark_gray"},{"text":"The ","color":"gray"},{"text":"Gravedigger","color":"red","bold":true},{"text":" has been defeated.","color":"gray"}]
execute if entity @s[tag=blaze_miniboss,x=0,y=66,z=0,distance=500..] run tellraw @a[tag=playing] [{"text":"☠ ","color":"dark_gray"},{"text":"The ","color":"gray"},{"text":"Fiery Fiend","color":"red","bold":true},{"text":" has been defeated.","color":"gray"}]
execute if entity @s[tag=skeleton_miniboss] run tellraw @a[tag=playing] [{"text":"☠ ","color":"dark_gray"},{"text":"The ","color":"gray"},{"text":"Royal Archer","color":"red","bold":true},{"text":" has been defeated.","color":"gray"}]
execute if entity @s[tag=enderman_miniboss] run tellraw @a[tag=playing] [{"text":"☠ ","color":"dark_gray"},{"text":"The ","color":"gray"},{"text":"Ender King","color":"red","bold":true},{"text":" has been defeated.","color":"gray"}]
execute if entity @s[tag=polar_bear_miniboss,tag=big_polar_bear] run tellraw @a[tag=playing] [{"text":"☠ ","color":"dark_gray"},{"text":"The ","color":"gray"},{"text":"Head of the Polar Family","color":"red","bold":true},{"text":" has been defeated.","color":"gray"}]
execute if entity @s[type=mooshroom,tag=miniboss] run tellraw @a[tag=playing] [{"text":"☠ ","color":"dark_gray"},{"text":"The ","color":"gray"},{"text":"Furious Fungus","color":"red","bold":true},{"text":" has been defeated.","color":"gray"}]
execute if entity @s[type=illusioner,tag=miniboss,tag=!pug_illagers_miniboss] run tellraw @a[tag=playing] [{"text":"☠ ","color":"dark_gray"},{"text":"The ","color":"gray"},{"text":"Daring Dancer","color":"red","bold":true},{"text":" has been defeated.","color":"gray"}]
execute if entity @s[type=spider,tag=miniboss] run tellraw @a[tag=playing] [{"text":"☠ ","color":"dark_gray"},{"text":"The ","color":"gray"},{"text":"Spider Queen","color":"red","bold":true},{"text":" has been defeated.","color":"gray"}]
execute if entity @s[type=slime,tag=miniboss] run tellraw @a[tag=playing] [{"text":"☠ ","color":"dark_gray"},{"text":"The ","color":"gray"},{"text":"Main Static Splitter","color":"red","bold":true},{"text":" has been defeated.","color":"gray"}]
execute if entity @s[tag=pug_golem_miniboss] run tellraw @a[tag=playing] [{"text":"☠ ","color":"dark_gray"},{"text":"The ","color":"gray"},{"text":"Gallant Golem","color":"red","bold":true},{"text":" has been defeated.","color":"gray"}]

execute if entity @s[tag=cpt_forge_miniboss] run tellraw @a[tag=playing] [{"text":"☠ ","color":"dark_gray"},{"text":"The ","color":"gray"},{"text":"Blacksmith","color":"red","bold":true},{"text":" has been defeated.","color":"gray"}]
execute if entity @s[tag=cpt_tower_miniboss] run tellraw @a[tag=playing] [{"text":"☠ ","color":"dark_gray"},{"text":"The ","color":"gray"},{"text":"Tower Archer","color":"red","bold":true},{"text":" has been defeated.","color":"gray"}]