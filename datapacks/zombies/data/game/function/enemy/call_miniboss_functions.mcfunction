##called to call miniboss main functions.


execute if entity @e[type=minecraft:husk,tag=miniboss] run function game:enemy/husk/main
execute if entity @e[type=minecraft:zombie,tag=enderman_miniboss,tag=miniboss] run function game:enemy/enderman/main
execute if entity @e[type=minecraft:mooshroom,tag=miniboss] run function game:enemy/mooshroom/main
execute if entity @e[type=minecraft:bee,tag=miniboss] run function game:enemy/bee/main
execute if entity @e[type=minecraft:spider,tag=miniboss] run function game:enemy/spider/main
execute if entity @e[type=minecraft:slime,tag=miniboss] run function game:enemy/slime/main
execute if entity @e[type=minecraft:zombie,tag=hoodie_miniboss,tag=miniboss] run function game:enemy/hoodies/main
execute if entity @e[tag=pug_illagers_miniboss,tag=miniboss] run schedule function game:enemy/pug_illagers/main 1t
execute if entity @e[tag=pug_golem_miniboss,tag=miniboss] run function game:enemy/pug_golem/main
execute if entity @e[tag=cpt_forge_miniboss,tag=miniboss] run function game:enemy/cpt_forge/main
execute if entity @e[tag=cpt_king_miniboss,tag=miniboss] run function game:enemy/cpt_king/main



##Also checking for new journal entries.

execute as @a[gamemode=adventure,tag=playing,team=game,advancements={journal:spider_queen=false}] at @s if entity @e[type=minecraft:spider,distance=..7,tag=miniboss] unless score $difficulty settings matches -1 run advancement grant @s only journal:spider_queen
execute as @a[gamemode=adventure,tag=playing,team=game,advancements={journal:fiery_fiend=false}] at @s if entity @e[type=minecraft:blaze,distance=..7,tag=miniboss] unless score $difficulty settings matches -1 run advancement grant @s only journal:fiery_fiend
execute as @a[gamemode=adventure,tag=playing,team=game,advancements={journal:furious_fungus=false}] at @s if entity @e[type=minecraft:mooshroom,distance=..7,tag=miniboss] unless score $difficulty settings matches -1 run advancement grant @s only journal:furious_fungus
execute as @a[gamemode=adventure,tag=playing,team=game,advancements={journal:polar_family=false}] at @s if entity @e[type=minecraft:polar_bear,distance=..7,tag=miniboss] unless score $difficulty settings matches -1 run advancement grant @s only journal:polar_family
execute if score $mode settings matches 0 as @a[gamemode=adventure,tag=playing,team=game,advancements={journal:daring_dancer=false}] at @s if entity @e[type=minecraft:illusioner,distance=..7,tag=miniboss] unless score $difficulty settings matches -1 run advancement grant @s only journal:daring_dancer
execute as @a[gamemode=adventure,tag=playing,team=game,advancements={journal:royal_archer=false}] at @s if entity @e[type=minecraft:skeleton,distance=..7,tag=miniboss] unless score $difficulty settings matches -1 run advancement grant @s only journal:royal_archer
execute as @a[gamemode=adventure,tag=playing,team=game,advancements={journal:static_splitters=false}] at @s if entity @e[type=minecraft:slime,distance=..7,tag=miniboss] unless score $difficulty settings matches -1 run advancement grant @s only journal:static_splitters
execute as @a[gamemode=adventure,tag=playing,team=game,advancements={journal:gravedigger=false}] at @s if entity @e[type=minecraft:husk,distance=..7,tag=miniboss] unless score $difficulty settings matches -1 run advancement grant @s only journal:gravedigger
execute as @a[gamemode=adventure,tag=playing,team=game,advancements={journal:ender_king=false}] at @s if entity @e[distance=..7,tag=enderman_miniboss] unless score $difficulty settings matches -1 run advancement grant @s only journal:ender_king
execute as @a[gamemode=adventure,tag=playing,team=game,advancements={journal:scary_swarm=false}] at @s if entity @e[type=minecraft:bee,distance=..7,tag=miniboss] unless score $difficulty settings matches -1 run advancement grant @s only journal:scary_swarm

execute if score $mode settings matches 1 as @a[gamemode=adventure,tag=playing,team=game,advancements={journal:dangerous_duo=false}] at @s if entity @e[distance=..7,tag=pug_illagers_miniboss] unless score $difficulty settings matches -1 run advancement grant @s only journal:dangerous_duo
execute if score $mode settings matches 1 as @a[gamemode=adventure,tag=playing,team=game,advancements={journal:gallant_golem=false}] at @s if entity @e[distance=..7,tag=pug_golem_miniboss] unless score $difficulty settings matches -1 run advancement grant @s only journal:gallant_golem

execute if score $mode settings matches 2 as @a[gamemode=adventure,tag=playing,team=game,advancements={journal:blacksmith=false}] at @s if entity @e[distance=..7,tag=cpt_forge_miniboss] unless score $difficulty settings matches -1 run advancement grant @s only journal:blacksmith
execute if score $mode settings matches 2 as @a[gamemode=adventure,tag=playing,team=game,advancements={journal:tower_archer=false}] at @s if entity @e[distance=..7,tag=cpt_tower_miniboss] unless score $difficulty settings matches -1 run advancement grant @s only journal:tower_archer
execute if score $mode settings matches 2 as @a[gamemode=adventure,tag=playing,team=game,advancements={journal:cobalt_king=false}] at @s if entity @e[distance=..7,tag=cpt_king_miniboss] unless score $difficulty settings matches -1 run advancement grant @s only journal:cobalt_king
return 1