##Called when an enemy is supposed to die.

##Death name:
data modify entity @s[scores={enemy_health=0}] CustomNameVisible set value 0b

##If we were from the forest essence boss fight.
execute if entity @s[tag=forest_essence_controlled] at @s run function game:boss/fight/forest_essence/control/die

##Summoning loot table
execute if entity @s[scores={enemy_loot_table=0}] run loot spawn ~ ~ ~ loot game:enemy_drops/default
execute if entity @s[scores={enemy_loot_table=1}] run loot spawn ~ ~ ~ loot game:enemy_drops/knight
execute if entity @s[scores={enemy_loot_table=2}] run loot spawn ~ ~ ~ loot game:enemy_drops/baby

##tagging new items
tag @e[type=item,distance=..1] add die_between_games

##If this is adventure, count down health pot
execute unless entity @s[tag=tutorial_enemy] if score $mode settings matches 1.. run scoreboard players add $health_pot game 1
execute unless entity @s[tag=tutorial_enemy] if score $mode settings matches 1.. if score $difficulty settings matches 0 if score $health_pot game matches 10.. run function game:enemy/drop_health_pot
execute unless entity @s[tag=tutorial_enemy] if score $mode settings matches 1.. if score $difficulty settings matches 1 if score $health_pot game matches 20.. run function game:enemy/drop_health_pot
execute unless entity @s[tag=tutorial_enemy] if score $mode settings matches 1.. if score $difficulty settings matches 2 if score $health_pot game matches 30.. run function game:enemy/drop_health_pot
execute unless entity @s[tag=tutorial_enemy] if score $mode settings matches 1.. if score $difficulty settings matches 3 if score $health_pot game matches 40.. run function game:enemy/drop_health_pot
execute unless entity @s[tag=tutorial_enemy] if score $mode settings matches 1.. if score $difficulty settings matches 4 if score $health_pot game matches 45.. run function game:enemy/drop_health_pot

##If we're in the erodus boss fight
execute if entity @s[x=4974,y=77,z=63,dx=20,dy=20,dz=24] if score $phase boss matches 1 run function game:boss/fight/stone_monster/enemy_die_first_phase

##Miniboss enemies that aren't the actual boss.

execute if entity @s[tag=polar_bear_miniboss,tag=!big_polar_bear] run loot spawn ~ ~ ~ loot game:enemy_drops/polar_bear


execute if entity @s[tag=skeleton_miniboss,type=skeleton_horse] run loot spawn ~ ~ ~ loot game:enemy_drops/skeleton_horse

execute if entity @s[type=bee,tag=miniboss] run loot spawn ~ ~ ~ loot game:enemy_drops/knight
execute if entity @s[type=bee,tag=miniboss] unless entity @e[type=bee,tag=miniboss] run tellraw @a[tag=playing] [{"text":"☠ ","color":"dark_gray"},{"text":"The ","color":"gray"},{"text":"Scary Swarm","color":"red","bold":true},{"text":" has been defeated.","color":"gray"}]

execute if entity @s[type=#game:piglins,tag=miniboss] run loot spawn ~ ~ ~ loot game:enemy_drops/piglins
execute if entity @s[type=#game:piglins,tag=miniboss] unless entity @e[type=#game:piglins,tag=miniboss] run tellraw @a[tag=playing] [{"text":"☠ ","color":"dark_gray"},{"text":"The ","color":"gray"},{"text":"Piglin Horde","color":"red","bold":true},{"text":" has been defeated.","color":"gray"}]

execute if entity @s[type=slime,tag=miniboss] run function game:enemy/slime/die
execute if entity @s[type=slime,tag=miniboss] run loot spawn ~ ~ ~ loot game:enemy_drops/knight
execute if entity @s[type=slime,tag=miniboss] unless entity @e[type=slime,tag=miniboss] run tellraw @a[tag=playing] [{"text":"☠ ","color":"dark_gray"},{"text":"The ","color":"gray"},{"text":"Static Splitters","color":"red","bold":true},{"text":" has been defeated.","color":"gray"}]


##If we're a miniboss  drop stat boosters
execute if entity @s[tag=miniboss,type=!bee,type=!#game:piglins] unless entity @s[type=slime,scores={slime_sizes=..3}] unless entity @s[tag=polar_bear_miniboss,tag=!big_polar_bear] unless entity @s[tag=skeleton_miniboss,type=skeleton_horse] run function game:enemy/miniboss_die
execute if entity @s[tag=miniboss_key] run function game:enemy/summon_miniboss_key

##Counting those who have a punch kill
execute store result score $calculate calculate if entity @a[tag=playing,advancements={game:punch_kill=true}]

##If we're a magma cube, tp us first
tp @s[type=magma_cube] 0 0 0

##Killing us if we're at zero
kill @s[scores={enemy_health=0}]
##If someone got a punch kill and we're about to die, summon a marker
execute if entity @a[tag=playing,advancements={game:punch_kill=true}] run summon area_effect_cloud ~ ~ ~ {Duration:0,Tags:["punch_kill"]}
