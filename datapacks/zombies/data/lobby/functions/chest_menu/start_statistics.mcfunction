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
execute if score @s global_difficult matches -1 run item replace entity @s enderchest.8 with enderman_spawn_egg{clickable:1,invalid_click:1,display:{Name:'[{"text":"Highest ","color":"gray","italic":false,"bold":false},{"text":"difficulty ","color":"red"},{"text":"beaten","color":"dark_red"},{"text":": ","color":"gray"},{"text":"None","color":"dark_gray","italic":false,"bold":true}]'}}
execute if score @s global_difficult matches 0 run item replace entity @s enderchest.8 with enderman_spawn_egg{clickable:1,invalid_click:1,display:{Name:'[{"text":"Highest ","color":"gray","italic":false,"bold":false},{"text":"difficulty ","color":"red"},{"text":"beaten","color":"dark_red"},{"text":": ","color":"gray"},{"text":"Super Easy","color":"dark_green","italic":false,"bold":true}]'}}
execute if score @s global_difficult matches 1 run item replace entity @s enderchest.8 with enderman_spawn_egg{clickable:1,invalid_click:1,display:{Name:'[{"text":"Highest ","color":"gray","italic":false,"bold":false},{"text":"difficulty ","color":"red"},{"text":"beaten","color":"dark_red"},{"text":": ","color":"gray"},{"text":"Easy","color":"green","italic":false,"bold":true}]'}}
execute if score @s global_difficult matches 2 run item replace entity @s enderchest.8 with enderman_spawn_egg{clickable:1,invalid_click:1,display:{Name:'[{"text":"Highest ","color":"gray","italic":false,"bold":false},{"text":"difficulty ","color":"red"},{"text":"beaten","color":"dark_red"},{"text":": ","color":"gray"},{"text":"Medium","color":"yellow","italic":false,"bold":true}]'}}
execute if score @s global_difficult matches 3 run item replace entity @s enderchest.8 with enderman_spawn_egg{clickable:1,invalid_click:1,display:{Name:'[{"text":"Highest ","color":"gray","italic":false,"bold":false},{"text":"difficulty ","color":"red"},{"text":"beaten","color":"dark_red"},{"text":": ","color":"gray"},{"text":"Hard","color":"red","italic":false,"bold":true}]'}}
execute if score @s global_difficult matches 4 run item replace entity @s enderchest.8 with enderman_spawn_egg{clickable:1,invalid_click:1,display:{Name:'[{"text":"Highest ","color":"gray","italic":false,"bold":false},{"text":"difficulty ","color":"red"},{"text":"beaten","color":"dark_red"},{"text":": ","color":"gray"},{"text":"Super Hard","color":"dark_red","italic":false,"bold":true}]'}}
execute if score @s global_difficult matches 5 run item replace entity @s enderchest.8 with enderman_spawn_egg{clickable:1,invalid_click:1,display:{Name:'[{"text":"Highest ","color":"gray","italic":false,"bold":false},{"text":"difficulty ","color":"red"},{"text":"beaten","color":"dark_red"},{"text":": ","color":"gray"},{"text":"Hardcore","color":"#600011","italic":false,"bold":true}]'}}
execute if score @s global_difficult matches 6 run item replace entity @s enderchest.8 with enderman_spawn_egg{clickable:1,invalid_click:1,display:{Name:'[{"text":"Highest ","color":"gray","italic":false,"bold":false},{"text":"difficulty ","color":"red"},{"text":"beaten","color":"dark_red"},{"text":": ","color":"gray"},{"text":"Nightmare","color":"#423031","italic":false,"bold":true}]'}}






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


item replace entity @s enderchest.18 with barrier{clickable:1,HideFlags:63,clickable:1,display:{Name:'[{"text":"Back","bold":true,"italic":false,"color":"#ff0000"}]'}}

