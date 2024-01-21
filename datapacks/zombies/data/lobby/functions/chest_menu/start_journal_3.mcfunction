##Starting the ender chest cosmetics screen

##Clear Function
function lobby:chest_menu/clear_chest

##Setting screen
scoreboard players set @s screen 20


##Filling blank pages
item replace entity @s enderchest.0 with paper{clickable:1,invalid_click:1,HideFlags:63,display:{Name:'[{"text":"Blank ","bold":false,"italic":false,"color":"white"},{"text":"Page","color":"gray"}]',Lore:['[{"text":"Find this creature to unlock","italic":false,"color":"gray"}]','[{"text":"this journal page.","color":"gray","italic":false}]']}}
item replace entity @s enderchest.1 with paper{clickable:1,invalid_click:1,HideFlags:63,display:{Name:'[{"text":"Blank ","bold":false,"italic":false,"color":"white"},{"text":"Page","color":"gray"}]',Lore:['[{"text":"Find this creature to unlock","italic":false,"color":"gray"}]','[{"text":"this journal page.","color":"gray","italic":false}]']}}
item replace entity @s enderchest.2 with paper{clickable:1,invalid_click:1,HideFlags:63,display:{Name:'[{"text":"Blank ","bold":false,"italic":false,"color":"white"},{"text":"Page","color":"gray"}]',Lore:['[{"text":"Find this creature to unlock","italic":false,"color":"gray"}]','[{"text":"this journal page.","color":"gray","italic":false}]']}}
item replace entity @s enderchest.3 with paper{clickable:1,invalid_click:1,HideFlags:63,display:{Name:'[{"text":"Blank ","bold":false,"italic":false,"color":"white"},{"text":"Page","color":"gray"}]',Lore:['[{"text":"Find this creature to unlock","italic":false,"color":"gray"}]','[{"text":"this journal page.","color":"gray","italic":false}]']}}
item replace entity @s enderchest.4 with paper{clickable:1,invalid_click:1,HideFlags:63,display:{Name:'[{"text":"Blank ","bold":false,"italic":false,"color":"white"},{"text":"Page","color":"gray"}]',Lore:['[{"text":"Find this creature to unlock","italic":false,"color":"gray"}]','[{"text":"this journal page.","color":"gray","italic":false}]']}}
item replace entity @s enderchest.5 with paper{clickable:1,invalid_click:1,HideFlags:63,display:{Name:'[{"text":"Blank ","bold":false,"italic":false,"color":"white"},{"text":"Page","color":"gray"}]',Lore:['[{"text":"Find this creature to unlock","italic":false,"color":"gray"}]','[{"text":"this journal page.","color":"gray","italic":false}]']}}

item replace entity @s enderchest.6 with paper{clickable:1,invalid_click:1,HideFlags:63,display:{Name:'[{"text":"Blank ","bold":false,"italic":false,"color":"white"},{"text":"Page","color":"gray"}]',Lore:['[{"text":"Find this creature to unlock","italic":false,"color":"gray"}]','[{"text":"this journal page.","color":"gray","italic":false}]']}}
item replace entity @s enderchest.7 with paper{clickable:1,invalid_click:1,HideFlags:63,display:{Name:'[{"text":"Blank ","bold":false,"italic":false,"color":"white"},{"text":"Page","color":"gray"}]',Lore:['[{"text":"Find this creature to unlock","italic":false,"color":"gray"}]','[{"text":"this journal page.","color":"gray","italic":false}]']}}
item replace entity @s enderchest.8 with paper{clickable:1,invalid_click:1,HideFlags:63,display:{Name:'[{"text":"Blank ","bold":false,"italic":false,"color":"white"},{"text":"Page","color":"gray"}]',Lore:['[{"text":"Find this creature to unlock","italic":false,"color":"gray"}]','[{"text":"this journal page.","color":"gray","italic":false}]']}}
item replace entity @s enderchest.9 with paper{clickable:1,invalid_click:1,HideFlags:63,display:{Name:'[{"text":"Blank ","bold":false,"italic":false,"color":"white"},{"text":"Page","color":"gray"}]',Lore:['[{"text":"Find this creature to unlock","italic":false,"color":"gray"}]','[{"text":"this journal page.","color":"gray","italic":false}]']}}
item replace entity @s enderchest.10 with paper{clickable:1,invalid_click:1,HideFlags:63,display:{Name:'[{"text":"Blank ","bold":false,"italic":false,"color":"white"},{"text":"Page","color":"gray"}]',Lore:['[{"text":"Find this creature to unlock","italic":false,"color":"gray"}]','[{"text":"this journal page.","color":"gray","italic":false}]']}}

##Overwriting blank pages
loot replace entity @s[advancements={journal:wind_thief=true}] enderchest.0 loot journal:wind_thief
loot replace entity @s[advancements={journal:rogue=true}] enderchest.1 loot journal:rogue
loot replace entity @s[advancements={journal:lobber=true}] enderchest.2 loot journal:lobber
loot replace entity @s[advancements={journal:spawner=true}] enderchest.3 loot journal:spawner
loot replace entity @s[advancements={journal:candlehead=true}] enderchest.4 loot journal:candlehead

loot replace entity @s[advancements={journal:phantom=true}] enderchest.5 loot journal:phantom
loot replace entity @s[advancements={journal:evoker=true}] enderchest.6 loot journal:evoker
loot replace entity @s[advancements={journal:vex=true}] enderchest.7 loot journal:vex
loot replace entity @s[advancements={journal:mage=true}] enderchest.8 loot journal:mage
loot replace entity @s[advancements={journal:keeper=true}] enderchest.9 loot journal:keeper
loot replace entity @s[advancements={journal:fallen_arbalist=true}] enderchest.10 loot journal:fallen_arbalist


item replace entity @s enderchest.18 with barrier{clickable:1,HideFlags:63,display:{Name:'[{"text":"Back","bold":true,"italic":false,"color":"#ff0000"}]'}}
##item replace entity @s enderchest.26 with lime_dye{clickable:1,HideFlags:63,display:{Name:'[{"text":"Next","bold":true,"italic":false,"color":"#00ff00"}]'}}

