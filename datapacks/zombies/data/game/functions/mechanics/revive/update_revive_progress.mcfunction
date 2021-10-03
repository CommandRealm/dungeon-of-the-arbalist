##called to update revive progress on our name.

##updating our revive compare score
scoreboard players operation @s revive_compare = @s revive_progress

##setting the text
execute if score @s revive_progress matches 0..39 positioned ~ ~1.5 ~ run data modify entity @e[type=area_effect_cloud,tag=revive_progress_text,sort=nearest,limit=1] CustomName set value '[{"text":">>>>>>>>","bold":true,"color":"gray"}]'
execute if score @s revive_progress matches 40..79 positioned ~ ~1.5 ~ run data modify entity @e[type=area_effect_cloud,tag=revive_progress_text,sort=nearest,limit=1] CustomName set value '[{"text":">","bold":true,"color":"dark_green"},{"text":">>>>>>>","bold":true,"color":"gray"}]'
execute if score @s revive_progress matches 80..119 positioned ~ ~1.5 ~ run data modify entity @e[type=area_effect_cloud,tag=revive_progress_text,sort=nearest,limit=1] CustomName set value '[{"text":">>","bold":true,"color":"dark_green"},{"text":">>>>>>","bold":true,"color":"gray"}]'
execute if score @s revive_progress matches 120..159 positioned ~ ~1.5 ~ run data modify entity @e[type=area_effect_cloud,tag=revive_progress_text,sort=nearest,limit=1] CustomName set value '[{"text":">>>","bold":true,"color":"dark_green"},{"text":">>>>>","bold":true,"color":"gray"}]'
execute if score @s revive_progress matches 160..199 positioned ~ ~1.5 ~ run data modify entity @e[type=area_effect_cloud,tag=revive_progress_text,sort=nearest,limit=1] CustomName set value '[{"text":">>>>","bold":true,"color":"dark_green"},{"text":">>>>","bold":true,"color":"gray"}]'
execute if score @s revive_progress matches 200..239 positioned ~ ~1.5 ~ run data modify entity @e[type=area_effect_cloud,tag=revive_progress_text,sort=nearest,limit=1] CustomName set value '[{"text":">>>>>","bold":true,"color":"dark_green"},{"text":">>>","bold":true,"color":"gray"}]'
execute if score @s revive_progress matches 240..279 positioned ~ ~1.5 ~ run data modify entity @e[type=area_effect_cloud,tag=revive_progress_text,sort=nearest,limit=1] CustomName set value '[{"text":">>>>>>","bold":true,"color":"dark_green"},{"text":">>","bold":true,"color":"gray"}]'
execute if score @s revive_progress matches 280..319 positioned ~ ~1.5 ~ run data modify entity @e[type=area_effect_cloud,tag=revive_progress_text,sort=nearest,limit=1] CustomName set value '[{"text":">>>>>>>","bold":true,"color":"dark_green"},{"text":">","bold":true,"color":"gray"}]'
execute if score @s revive_progress matches 320 positioned ~ ~1.5 ~ run data modify entity @e[type=area_effect_cloud,tag=revive_progress_text,sort=nearest,limit=1] CustomName set value '[{"text":">>>>>>>>","bold":true,"color":"dark_green"}]'