##called to fill our inventory with iron bars

##clearing inv and killing items
clear @s iron_bars
kill @e[type=item,nbt={Item:{id:"minecraft:iron_bars"}},distance=..5]

##Replaceitems
item replace entity @s[tag=!filled_hotbar] inventory.0 with iron_bars{display:{Name:'[{"text":""}]'},HideFlags:63}
item replace entity @s[tag=filled_hotbar] inventory.0 with air
item replace entity @s inventory.1 with iron_bars{display:{Name:'[{"text":""}]'},HideFlags:63}
item replace entity @s inventory.2 with iron_bars{display:{Name:'[{"text":""}]'},HideFlags:63}



item replace entity @s inventory.6 with iron_bars{display:{Name:'[{"text":""}]'},HideFlags:63}
item replace entity @s inventory.7 with iron_bars{display:{Name:'[{"text":""}]'},HideFlags:63}
item replace entity @s inventory.8 with iron_bars{display:{Name:'[{"text":""}]'},HideFlags:63}
item replace entity @s inventory.9 with iron_bars{display:{Name:'[{"text":""}]'},HideFlags:63}
item replace entity @s inventory.10 with iron_bars{display:{Name:'[{"text":""}]'},HideFlags:63}
item replace entity @s inventory.11 with iron_bars{display:{Name:'[{"text":""}]'},HideFlags:63}



item replace entity @s inventory.15 with iron_bars{display:{Name:'[{"text":""}]'},HideFlags:63}
item replace entity @s inventory.16 with iron_bars{display:{Name:'[{"text":""}]'},HideFlags:63}
item replace entity @s inventory.17 with iron_bars{display:{Name:'[{"text":""}]'},HideFlags:63}
item replace entity @s inventory.18 with iron_bars{display:{Name:'[{"text":""}]'},HideFlags:63}
item replace entity @s inventory.19 with iron_bars{display:{Name:'[{"text":""}]'},HideFlags:63}
item replace entity @s inventory.20 with iron_bars{display:{Name:'[{"text":""}]'},HideFlags:63}
item replace entity @s inventory.21 with iron_bars{display:{Name:'[{"text":""}]'},HideFlags:63}
item replace entity @s inventory.22 with iron_bars{display:{Name:'[{"text":""}]'},HideFlags:63}
item replace entity @s inventory.23 with iron_bars{display:{Name:'[{"text":""}]'},HideFlags:63}
item replace entity @s inventory.24 with iron_bars{display:{Name:'[{"text":""}]'},HideFlags:63}
item replace entity @s inventory.25 with iron_bars{display:{Name:'[{"text":""}]'},HideFlags:63}
item replace entity @s inventory.26 with iron_bars{display:{Name:'[{"text":""}]'},HideFlags:63}