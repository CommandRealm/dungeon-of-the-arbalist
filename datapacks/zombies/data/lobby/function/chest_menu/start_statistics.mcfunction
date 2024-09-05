##Starting the ender chest cosmetics screen

##Clear Function
function lobby:chest_menu/clear_chest

##Setting screen
scoreboard players set @s screen 5

##Finding accuracy
scoreboard players operation @s global_accuracy = @s global_hits
scoreboard players operation @s global_accuracy *= $100 number
scoreboard players operation @s global_accuracy /= @s global_shots
##Middle row
loot replace entity @s enderchest.0 loot lobby:stats/games
loot replace entity @s enderchest.1 loot lobby:stats/wins
loot replace entity @s enderchest.2 loot lobby:stats/shots
loot replace entity @s enderchest.3 loot lobby:stats/hits
loot replace entity @s enderchest.4 loot lobby:stats/accuracy
loot replace entity @s enderchest.5 loot lobby:stats/kills
loot replace entity @s enderchest.6 loot lobby:stats/treasure
loot replace entity @s enderchest.7 loot lobby:stats/spent

##clickable:1,invalid_click:1,displaying difficulty
execute if score @s global_difficult matches -1 run item replace entity @s enderchest.8 with minecraft:enderman_spawn_egg[minecraft:custom_name='{"bold":false,"color":"gray","extra":[{"color":"red","text":"difficulty "},{"color":"dark_red","text":"beaten"},{"color":"gray","text":": "},{"bold":true,"color":"dark_gray","italic":false,"text":"None"}],"italic":false,"text":"Highest "}',minecraft:custom_data={clickable:1,invalid_click:1}]
execute if score @s global_difficult matches 0 run item replace entity @s enderchest.8 with minecraft:enderman_spawn_egg[minecraft:custom_name='{"bold":false,"color":"gray","extra":[{"color":"red","text":"difficulty "},{"color":"dark_red","text":"beaten"},{"color":"gray","text":": "},{"bold":true,"color":"dark_green","italic":false,"text":"Super Easy"}],"italic":false,"text":"Highest "}',minecraft:custom_data={clickable:1,invalid_click:1}]
execute if score @s global_difficult matches 1 run item replace entity @s enderchest.8 with minecraft:enderman_spawn_egg[minecraft:custom_name='{"bold":false,"color":"gray","extra":[{"color":"red","text":"difficulty "},{"color":"dark_red","text":"beaten"},{"color":"gray","text":": "},{"bold":true,"color":"green","italic":false,"text":"Easy"}],"italic":false,"text":"Highest "}',minecraft:custom_data={clickable:1,invalid_click:1}]
execute if score @s global_difficult matches 2 run item replace entity @s enderchest.8 with minecraft:enderman_spawn_egg[minecraft:custom_name='{"bold":false,"color":"gray","extra":[{"color":"red","text":"difficulty "},{"color":"dark_red","text":"beaten"},{"color":"gray","text":": "},{"bold":true,"color":"yellow","italic":false,"text":"Medium"}],"italic":false,"text":"Highest "}',minecraft:custom_data={clickable:1,invalid_click:1}]
execute if score @s global_difficult matches 3 run item replace entity @s enderchest.8 with minecraft:enderman_spawn_egg[minecraft:custom_name='{"bold":false,"color":"gray","extra":[{"color":"red","text":"difficulty "},{"color":"dark_red","text":"beaten"},{"color":"gray","text":": "},{"bold":true,"color":"red","italic":false,"text":"Hard"}],"italic":false,"text":"Highest "}',minecraft:custom_data={clickable:1,invalid_click:1}]
execute if score @s global_difficult matches 4 run item replace entity @s enderchest.8 with minecraft:enderman_spawn_egg[minecraft:custom_name='{"bold":false,"color":"gray","extra":[{"color":"red","text":"difficulty "},{"color":"dark_red","text":"beaten"},{"color":"gray","text":": "},{"bold":true,"color":"dark_red","italic":false,"text":"Super Hard"}],"italic":false,"text":"Highest "}',minecraft:custom_data={clickable:1,invalid_click:1}]
execute if score @s global_difficult matches 5 run item replace entity @s enderchest.8 with minecraft:enderman_spawn_egg[minecraft:custom_name='{"bold":false,"color":"gray","extra":[{"color":"red","text":"difficulty "},{"color":"dark_red","text":"beaten"},{"color":"gray","text":": "},{"bold":true,"color":"#600011","italic":false,"text":"Hardcore"}],"italic":false,"text":"Highest "}',minecraft:custom_data={clickable:1,invalid_click:1}]
execute if score @s global_difficult matches 6 run item replace entity @s enderchest.8 with minecraft:enderman_spawn_egg[minecraft:custom_name='{"bold":false,"color":"gray","extra":[{"color":"red","text":"difficulty "},{"color":"dark_red","text":"beaten"},{"color":"gray","text":": "},{"bold":true,"color":"#423031","italic":false,"text":"Nightmare"}],"italic":false,"text":"Highest "}',minecraft:custom_data={clickable:1,invalid_click:1}]






loot replace entity @s enderchest.9 loot lobby:stats/fire
loot replace entity @s enderchest.10 loot lobby:stats/water
loot replace entity @s enderchest.11 loot lobby:stats/earth
loot replace entity @s enderchest.12 loot lobby:stats/air
loot replace entity @s enderchest.13 loot lobby:stats/ice
loot replace entity @s enderchest.14 loot lobby:stats/lightning
loot replace entity @s enderchest.15 loot lobby:stats/nature
loot replace entity @s enderchest.16 loot lobby:stats/darkness
loot replace entity @s enderchest.17 loot lobby:stats/metal

loot replace entity @s enderchest.21 loot lobby:stats/falls
loot replace entity @s enderchest.22 loot lobby:stats/revives
loot replace entity @s enderchest.23 loot lobby:stats/punch


item replace entity @s enderchest.18 with minecraft:barrier[minecraft:custom_name='{"bold":true,"color":"#ff0000","italic":false,"text":"Back"}',minecraft:hide_additional_tooltip={},minecraft:custom_data={clickable:1}]


return 1