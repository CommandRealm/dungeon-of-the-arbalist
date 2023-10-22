execute if entity @e[tag=pug_illagers_cutscene,tag=pug_illagers_miniboss] run scoreboard players add $cutscene_timer pug_illagers 1
execute if entity @e[tag=pug_illagers_cutscene,tag=pug_illagers_miniboss] run function game:enemy/pug_illagers/cutscene

##particles for invisible illager
execute at @e[type=illusioner,tag=miniboss,nbt={active_effects:[{id:"minecraft:invisibility"}]}] run particle crit ~ ~ ~ 0 0 0 0 1