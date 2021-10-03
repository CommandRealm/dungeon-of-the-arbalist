##called to call miniboss main functions.


execute if entity @e[type=husk,tag=miniboss] run function game:enemy/husk/main
execute if entity @e[type=zombie,tag=enderman_miniboss,tag=miniboss] run function game:enemy/enderman/main
execute if entity @e[type=mooshroom,tag=miniboss] run function game:enemy/mooshroom/main
execute if entity @e[type=bee,tag=miniboss] run function game:enemy/bee/main
execute if entity @e[type=spider,tag=miniboss] run function game:enemy/spider/main
execute if entity @e[type=slime,tag=miniboss] run function game:enemy/slime/main
execute if entity @e[tag=pug_illagers_miniboss,tag=miniboss] run schedule function game:enemy/pug_illagers/main 1t
execute if entity @e[tag=pug_golem_miniboss,tag=miniboss] run function game:enemy/pug_golem/main
execute if entity @e[tag=cpt_forge_miniboss,tag=miniboss] run function game:enemy/cpt_forge/main
execute if entity @e[tag=cpt_king_miniboss,tag=miniboss] run function game:enemy/cpt_king/main



##Also checking for new journal entries.

execute as @a[tag=playing,team=game,gamemode=adventure,advancements={journal:spider_queen=false}] at @s if entity @e[type=spider,tag=miniboss,distance=..7] unless score $difficulty settings matches -1 run advancement grant @s only journal:spider_queen
execute as @a[tag=playing,team=game,gamemode=adventure,advancements={journal:fiery_fiend=false}] at @s if entity @e[type=blaze,tag=miniboss,distance=..7] unless score $difficulty settings matches -1 run advancement grant @s only journal:fiery_fiend
execute as @a[tag=playing,team=game,gamemode=adventure,advancements={journal:furious_fungus=false}] at @s if entity @e[type=mooshroom,tag=miniboss,distance=..7] unless score $difficulty settings matches -1 run advancement grant @s only journal:furious_fungus
execute as @a[tag=playing,team=game,gamemode=adventure,advancements={journal:polar_family=false}] at @s if entity @e[type=polar_bear,tag=miniboss,distance=..7] unless score $difficulty settings matches -1 run advancement grant @s only journal:polar_family
execute if score $mode settings matches 0 as @a[tag=playing,team=game,gamemode=adventure,advancements={journal:daring_dancer=false}] at @s if entity @e[type=illusioner,tag=miniboss,distance=..7] unless score $difficulty settings matches -1 run advancement grant @s only journal:daring_dancer
execute as @a[tag=playing,team=game,gamemode=adventure,advancements={journal:royal_archer=false}] at @s if entity @e[type=skeleton,tag=miniboss,distance=..7] unless score $difficulty settings matches -1 run advancement grant @s only journal:royal_archer
execute as @a[tag=playing,team=game,gamemode=adventure,advancements={journal:static_splitters=false}] at @s if entity @e[type=slime,tag=miniboss,distance=..7] unless score $difficulty settings matches -1 run advancement grant @s only journal:static_splitters
execute as @a[tag=playing,team=game,gamemode=adventure,advancements={journal:gravedigger=false}] at @s if entity @e[type=husk,tag=miniboss,distance=..7] unless score $difficulty settings matches -1 run advancement grant @s only journal:gravedigger
execute as @a[tag=playing,team=game,gamemode=adventure,advancements={journal:ender_king=false}] at @s if entity @e[tag=enderman_miniboss,distance=..7] unless score $difficulty settings matches -1 run advancement grant @s only journal:ender_king
execute as @a[tag=playing,team=game,gamemode=adventure,advancements={journal:scary_swarm=false}] at @s if entity @e[type=bee,tag=miniboss,distance=..7] unless score $difficulty settings matches -1 run advancement grant @s only journal:scary_swarm

execute if score $mode settings matches 1 as @a[tag=playing,team=game,gamemode=adventure,advancements={journal:dangerous_duo=false}] at @s if entity @e[tag=pug_illagers_miniboss,distance=..7] unless score $difficulty settings matches -1 run advancement grant @s only journal:dangerous_duo
execute if score $mode settings matches 1 as @a[tag=playing,team=game,gamemode=adventure,advancements={journal:gallant_golem=false}] at @s if entity @e[tag=pug_golem_miniboss,distance=..7] unless score $difficulty settings matches -1 run advancement grant @s only journal:gallant_golem

execute if score $mode settings matches 2 as @a[tag=playing,team=game,gamemode=adventure,advancements={journal:blacksmith=false}] at @s if entity @e[tag=cpt_forge_miniboss,distance=..7] unless score $difficulty settings matches -1 run advancement grant @s only journal:blacksmith
execute if score $mode settings matches 2 as @a[tag=playing,team=game,gamemode=adventure,advancements={journal:tower_archer=false}] at @s if entity @e[tag=cpt_tower_miniboss,distance=..7] unless score $difficulty settings matches -1 run advancement grant @s only journal:tower_archer
execute if score $mode settings matches 2 as @a[tag=playing,team=game,gamemode=adventure,advancements={journal:cobalt_king=false}] at @s if entity @e[tag=cpt_king_miniboss,distance=..7] unless score $difficulty settings matches -1 run advancement grant @s only journal:cobalt_king