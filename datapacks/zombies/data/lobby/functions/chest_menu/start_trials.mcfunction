# called to start trials


##Starting the ender chest cosmetics screen

##Clear Function
function lobby:chest_menu/clear_chest

##Setting screen
scoreboard players set @s screen 45


##Middle row

loot replace entity @s[tag=!trial_default] enderchest.2 loot lobby:trials/default_off
loot replace entity @s[tag=trial_default] enderchest.2 loot lobby:trials/default_on



loot replace entity @s[tag=!trial_shopless] enderchest.3 loot lobby:trials/shopless_off
loot replace entity @s[tag=trial_shopless] enderchest.3 loot lobby:trials/shopless_on

loot replace entity @s[tag=!trial_poverty] enderchest.4 loot lobby:trials/poverty_off
loot replace entity @s[tag=trial_poverty] enderchest.4 loot lobby:trials/poverty_on

loot replace entity @s[tag=!trial_four_in_the_quiver] enderchest.5 loot lobby:trials/quiver_off
loot replace entity @s[tag=trial_four_in_the_quiver] enderchest.5 loot lobby:trials/quiver_on

loot replace entity @s[tag=!trial_collector] enderchest.6 loot lobby:trials/collector_off
loot replace entity @s[tag=trial_collector] enderchest.6 loot lobby:trials/collector_on

loot replace entity @s[tag=!trial_detonation] enderchest.11 loot lobby:trials/detonation_off
loot replace entity @s[tag=trial_detonation] enderchest.11 loot lobby:trials/detonation_on

loot replace entity @s[tag=!trial_gloom] enderchest.12 loot lobby:trials/gloom_off
loot replace entity @s[tag=trial_gloom] enderchest.12 loot lobby:trials/gloom_on

loot replace entity @s[tag=!trial_firetrail] enderchest.13 loot lobby:trials/firetrail_off
loot replace entity @s[tag=trial_firetrail] enderchest.13 loot lobby:trials/firetrail_on

loot replace entity @s[tag=!trial_scramble] enderchest.14 loot lobby:trials/scramble_off
loot replace entity @s[tag=trial_scramble] enderchest.14 loot lobby:trials/scramble_on

loot replace entity @s[tag=!trial_random] enderchest.15 loot lobby:trials/random_off
loot replace entity @s[tag=trial_random] enderchest.15 loot lobby:trials/random_on



item replace entity @s enderchest.22 with structure_void{clickable:1,HideFlags:255,display:{Name:'["",{"text":"Disable ","color":"red","bold":false,"italic":false},{"text":"All","color":"gray","bold":false,"italic":false},{"text":" Trials","color":"#214f53","italic":false}]',Lore:['[{"text":"Click to disable all trials.","italic":true,"color":"gray"}]']}}

item replace entity @s enderchest.18 with barrier{clickable:1,HideFlags:255,display:{Name:'[{"text":"Back","bold":true,"italic":false,"color":"#ff0000"}]'}}

