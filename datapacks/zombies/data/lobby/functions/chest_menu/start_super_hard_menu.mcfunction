# called tos tart the kigndom leaderboard menu



##Clearing chest

##Clear Function
function lobby:chest_menu/clear_chest

##Setting screen
scoreboard players set @s screen 40


##Top Row
item replace entity @s enderchest.8 with red_concrete_powder{invalid_click:1,clickable:1,HideFlags:255,display:{Name:'[{"text":"Super Hard","bold":true,"italic":false,"color":"dark_red"}]'}}

##Middle row
item replace entity @s enderchest.12 with player_head{clickable:1,HideFlags:255,display:{Name:'[{"text":"Solo","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"text":"For games with one player.","color":"gray","italic":false}]']},SkullOwner:{Id:[I;1374239577,892161189,-2079557014,772124066],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTUwNmVlMGUzODJhMjg5MWViMWEzMzIyYTFjODg2YzlkOTdjMzQ4NWZiYzEyN2IzMzY4OWZjMTI4M2U3MWMifX19"}]}}}


item replace entity @s enderchest.14 with player_head{clickable:1,HideFlags:255,display:{Name:'[{"text":"Co-Op","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"text":"For games with more than one player.","color":"gray","italic":false}]']},SkullOwner:{Id:[I;299161609,935873540,-2140083598,77953924],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGFjYzU5OTQ4ODQ1NzNkYmM2Y2Q3YjUwM2NjNTViNzMzYjE4Yjg1YTFhZWE1ZjQwMWMwNjUzMjZjYzNjM2YifX19"}]}}}



item replace entity @s enderchest.18 with barrier{clickable:1,HideFlags:255,display:{Name:'[{"text":"Back","bold":true,"italic":false,"color":"#ff0000"}]'}}

