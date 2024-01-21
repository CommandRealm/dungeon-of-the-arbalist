##Frame two

execute as @e[type=area_effect_cloud,tag=upgrade_text,scores={animation=10},tag=fire_upgrade_text] run data modify entity @s CustomName set value '[{"text":"☄ ","color":"#d2c26c","underlined":true},{"text":"FIRE UPGRADE","bold":true,"color":"#f1390e"},{"text":" ☄","color":"#d2c26c"}]'
execute as @e[type=area_effect_cloud,tag=upgrade_text,scores={animation=10},tag=water_upgrade_text] run data modify entity @s CustomName set value '[{"text":"☄ ","color":"#d2c26c","underlined":true},{"text":"WATER UPGRADE","bold":true,"color":"#0e8ef1"},{"text":" ☄","color":"#d2c26c"}]'


execute as @e[type=area_effect_cloud,tag=upgrade_text,scores={animation=10},tag=earth_upgrade_text] run data modify entity @s CustomName set value '[{"text":"☄ ","color":"#d2c26c","underlined":true},{"text":"EARTH UPGRADE","bold":true,"color":"#b27565"},{"text":" ☄","color":"#d2c26c"}]'

execute as @e[type=area_effect_cloud,tag=upgrade_text,scores={animation=10},tag=air_upgrade_text] run data modify entity @s CustomName set value '[{"text":"☄ ","color":"#d2c26c","underlined":true},{"text":"AIR UPGRADE","bold":true,"color":"#d6d6d6"},{"text":" ☄","color":"#d2c26c"}]'
execute as @e[type=area_effect_cloud,tag=upgrade_text,scores={animation=10},tag=ice_upgrade_text] run data modify entity @s CustomName set value '[{"text":"☄ ","color":"#d2c26c","underlined":true},{"text":"ICE UPGRADE","bold":true,"color":"#6fe6ff"},{"text":" ☄","color":"#d2c26c"}]'
execute as @e[type=area_effect_cloud,tag=upgrade_text,scores={animation=10},tag=lightning_upgrade_text] run data modify entity @s CustomName set value '[{"text":"☄ ","color":"#d2c26c","underlined":true},{"text":"ELECTRIC UPGRADE","bold":true,"color":"#f0d44f"},{"text":" ☄","color":"#d2c26c"}]'
execute as @e[type=area_effect_cloud,tag=upgrade_text,scores={animation=10},tag=nature_upgrade_text] run data modify entity @s CustomName set value '[{"text":"☄ ","color":"#d2c26c","underlined":true},{"text":"NATURE UPGRADE","bold":true,"color":"#17b00c"},{"text":" ☄","color":"#d2c26c"}]'
execute as @e[type=area_effect_cloud,tag=upgrade_text,scores={animation=10},tag=darkness_upgrade_text] run data modify entity @s CustomName set value '[{"text":"☄ ","color":"#d2c26c","underlined":true},{"text":"DARKNESS UPGRADE","bold":true,"color":"#3e2e51"},{"text":" ☄","color":"#d2c26c"}]'
execute as @e[type=area_effect_cloud,tag=upgrade_text,scores={animation=10},tag=metal_upgrade_text] run data modify entity @s CustomName set value '[{"text":"☄ ","color":"#d2c26c","underlined":true},{"text":"METAL UPGRADE","bold":true,"color":"#544c4c"},{"text":" ☄","color":"#d2c26c"}]'



##Resetting our score
scoreboard players set @e[type=area_effect_cloud,tag=upgrade_text,scores={animation=10}] animation 0