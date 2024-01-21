# called tos tart the castle leaderboard menu



##Clearing chest

##Clear Function
function lobby:chest_menu/clear_chest

##Setting screen
scoreboard players set @s screen 21


##Top row
item replace entity @s enderchest.8 with cracked_stone_bricks{invalid_click:1,clickable:1,HideFlags:255,display:{Name:'[{"text":"Invaded Castle","bold":true,"italic":false,"color":"gold"}]'}}

##Middle row
item replace entity @s enderchest.10 with player_head{clickable:1,HideFlags:255,display:{Name:'[{"text":"Solo","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"text":"For games with one player.","color":"gray","italic":false}]']},SkullOwner:{Id:[I;1374239577,892161189,-2079557014,772124066],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTUwNmVlMGUzODJhMjg5MWViMWEzMzIyYTFjODg2YzlkOTdjMzQ4NWZiYzEyN2IzMzY4OWZjMTI4M2U3MWMifX19"}]}}}

item replace entity @s enderchest.12 with player_head{clickable:1,HideFlags:255,display:{Name:'[{"text":"Duo","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"text":"For games with two players.","color":"gray","italic":false}]']},SkullOwner:{Id:[I;-460249325,-263041435,-1452301009,-572897996],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzNjZjJjMTUyM2Y1ZTkxYzNiZGFiMDc2YjM5NWExYjM4MTEyMWNhMWMwYjQyYWU2NzgzZmI3Y2U1MThhIn19fQ=="}]}}}

item replace entity @s enderchest.14 with player_head{clickable:1,HideFlags:255,display:{Name:'[{"text":"Trio","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"text":"For games with three players.","color":"gray","italic":false}]']},SkullOwner:{Id:[I;-1066681296,-829472409,-1805167407,243523718],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDJjZDJiZmYyMWY2OTE4ZWE3ZGE0MTgzM2Q5OWEwYmRiMDE5YWNhMmE2N2U1ZGMyMGYxYTE3YTYxYjNkNjJhIn19fQ=="}]}}}

item replace entity @s enderchest.16 with player_head{clickable:1,HideFlags:255,display:{Name:'[{"text":"Squad","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"text":"For games with four or more players.","color":"gray","italic":false}]']},SkullOwner:{Id:[I;299161609,935873540,-2140083598,77953924],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGFjYzU5OTQ4ODQ1NzNkYmM2Y2Q3YjUwM2NjNTViNzMzYjE4Yjg1YTFhZWE1ZjQwMWMwNjUzMjZjYzNjM2YifX19"}]}}}



item replace entity @s enderchest.18 with barrier{clickable:1,HideFlags:255,display:{Name:'[{"text":"Back","bold":true,"italic":false,"color":"#ff0000"}]'}}

