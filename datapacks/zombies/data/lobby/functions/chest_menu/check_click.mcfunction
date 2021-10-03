##Called when someone clicks on something in the ender chest

##Seeing if it's an invalid click
execute store result score @s click run clear @s #minecraft:click{invalid_click:1} 0
tag @s[scores={click=1..}] add invalid_click

##Score reset
scoreboard players reset @s click

##Click
function lobby:chest_menu/click
#execute if entity @s[nbt={Inventory:[{tag:{clickable:1}}]}] run function lobby:chest_menu/shift_click


##Actual clear
clear @s #minecraft:click{clickable:1}

##tag removal
tag @s remove invalid_click