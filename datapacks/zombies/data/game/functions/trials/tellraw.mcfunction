# called to read off trials.

tellraw @s[tag=!skip_scramble,tag=active_trial] ["",{"text":" | ","color":"dark_red","obfuscated": true},{"text":"- ","color":"gray"},{"text":"Trials","color":"#214f53"},{"text":" -","color":"gray"},{"text":" | ","color":"dark_red","obfuscated": true}]

tellraw @s[tag=trial_random] ["",{"text":" - ","color":"gray"},{"text":"Random","color":"#6a232d","bold":true,"hoverEvent":{"action": "show_text","value":"Enables random trials at the beginning of the game."}},{"text":" Trials","color":"#214f53"},{"text":" - ","color":"gray"}]

# active trials
tellraw @s[tag=trial_default] ["",{"text":"The ","color":"dark_gray"},{"text":"Purist","color":"#6a232d","bold":true,"hoverEvent":{"action": "show_text","value":"You will be unable to upgrade your crossbow."}},{"text":" Trial","color":"#214f53"}]
tellraw @s[tag=trial_shopless] ["",{"text":"The ","color":"dark_gray"},{"text":"Shopless","color":"#6a232d","bold":true,"hoverEvent":{"action": "show_text","value":"You will be unable to purchase items."}},{"text":" Trial","color":"#214f53"}]
tellraw @s[tag=trial_poverty] ["",{"text":"The ","color":"dark_gray"},{"text":"Poverty","color":"#6a232d","bold":true,"hoverEvent":{"action": "show_text","value":"You will drop treasure when damaged."}},{"text":" Trial","color":"#214f53"}]
tellraw @s[tag=trial_four_in_the_quiver] ["",{"text":"The ","color":"dark_gray"},{"text":"Quiver","color":"#6a232d","bold":true,"hoverEvent":{"action": "show_text","value":"Four arrows in your quiver. Refills when you kill an enemy."}},{"text":" Trial","color":"#214f53"}]
tellraw @s[tag=trial_collector] ["",{"text":"The ","color":"dark_gray"},{"text":"Collector","color":"#6a232d","bold":true,"hoverEvent":{"action": "show_text","value":"Cycles randomly through collected crossbows periodically."}},{"text":" Trial","color":"#214f53"}]
tellraw @s[tag=trial_detonation] ["",{"text":"The ","color":"dark_gray"},{"text":"Detonation","color":"#6a232d","bold":true,"hoverEvent":{"action": "show_text","value":"All enemies will explode on death."}},{"text":" Trial","color":"#214f53"}]
tellraw @s[tag=trial_gloom] ["",{"text":"The ","color":"dark_gray"},{"text":"Gloom","color":"#6a232d","bold":true,"hoverEvent":{"action": "show_text","value":"You have permanent darkness."}},{"text":" Trial","color":"#214f53"}]
tellraw @s[tag=trial_firetrail] ["",{"text":"The ","color":"dark_gray"},{"text":"Firetrail","color":"#6a232d","bold":true,"hoverEvent":{"action": "show_text","value":"You leave a damaging fire trail as you move."}},{"text":" Trial","color":"#214f53"}]
tellraw @s[tag=trial_scramble,tag=!skip_scramble] ["",{"text":"The ","color":"dark_gray"},{"text":"Scramble","color":"#6a232d","bold":true,"hoverEvent":{"action": "show_text","value":"Each wave a random trial is enabled until the wave ends."}},{"text":" Trial","color":"#214f53"}]

# tellraw @s[tag=modifier_random] ["",{"text":"The ","color":"dark_gray"},{"text":"Mutation","color":"#6a232d","bold":true,"hoverEvent":{"action": "show_text","value":""}},{"text":" Trial","color":"#214f53"}]

# sounds
playsound minecraft:entity.skeleton_horse.death master @s ~ ~ ~ 1 0
playsound minecraft:entity.blaze.death master @s ~ ~ ~ 0.34 0.7
