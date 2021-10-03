##Called to end the attack.

##Particles for the blocks
execute at @e[type=falling_block,tag=boss_minion] run particle block obsidian ~ ~ ~ 0.33 0.33 0.33 0.1 50
execute at @e[type=falling_block,tag=boss_minion] run playsound minecraft:block.stone.break master @a ~ ~ ~ 1 1

##Killing the blocks
kill @e[type=area_effect_cloud,tag=boss_minion]
kill @e[type=falling_block,tag=boss_minion]

##Scores
scoreboard players set $attack boss 0
scoreboard players set $active_attack boss 0
scoreboard players set $cooldown boss 200

