# called to read off modifiers.

tellraw @s[tag=!skip_scramble,tag=active_trial] ["",{"text":" | ","color":"dark_aqua","obfuscated": true},{"text":"- ","color":"gray"},{"text":"Modifiers","color":"#214f53"},{"text":" -","color":"gray"},{"text":" | ","color":"dark_aqua","obfuscated": true}]

# active trials
execute if score $speedrun modifiers matches 1 run tellraw @s ["",{"text":"- ","color":"white"},{"text":"Open doors any time ","color":"gray"}]
execute if score $enemy_per_wave modifiers matches 1 run tellraw @s ["",{"text":"- ","color":"white"},{"text":"One enemy per wave ","color":"gray"}]
execute if score $random_items modifiers matches 1 run tellraw @s ["",{"text":"- ","color":"white"},{"text":"Enemies drop random items ","color":"gray"}]
execute if score $random_crossbow modifiers matches 1 run tellraw @s ["",{"text":"- ","color":"white"},{"text":"Random crossbows ","color":"gray"}]
execute if score $bouncy_arrows modifiers matches 1 run tellraw @s ["",{"text":"- ","color":"white"},{"text":"Arrows bounce ","color":"gray"}]
execute if score $volition modifiers matches 1 run tellraw @s ["",{"text":"- ","color":"white"},{"text":"Volition mobs only ","color":"gray"}]
execute if score $healthshare modifiers matches 1 run tellraw @s ["",{"text":"- ","color":"white"},{"text":"Players share health ","color":"gray"}]
execute if score $player_swap modifiers matches 1 run tellraw @s ["",{"text":"- ","color":"white"},{"text":"Players swap","color":"gray"}]

# tellraw @s[tag=modifier_random] ["",{"text":"The ","color":"dark_gray"},{"text":"Mutation","color":"#6a232d","bold":true,"hoverEvent":{"action": "show_text","value":""}},{"text":" Trial","color":"#214f53"}]

# sounds
playsound minecraft:entity.guardian.death master @s ~ ~ ~ 1 0
playsound minecraft:entity.blaze.hurt master @s ~ ~ ~ 0.34 0.7
