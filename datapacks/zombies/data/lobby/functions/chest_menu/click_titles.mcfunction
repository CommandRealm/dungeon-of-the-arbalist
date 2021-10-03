##Called when we click the titles.

execute unless data entity @s[tag=has_test] EnderItems[{Slot:0b}] run scoreboard players set @s prefix 0
execute unless data entity @s[tag=has_help] EnderItems[{Slot:1b}] run scoreboard players set @s prefix 1
execute unless data entity @s[tag=has_bld] EnderItems[{Slot:2b}] run scoreboard players set @s prefix 2
execute unless data entity @s[tag=has_srbld] EnderItems[{Slot:3b}] run scoreboard players set @s prefix 3
execute unless data entity @s[tag=has_prg] EnderItems[{Slot:4b}] run scoreboard players set @s prefix 4
execute unless data entity @s[tag=has_srprg] EnderItems[{Slot:5b}] run scoreboard players set @s prefix 5
execute unless data entity @s[tag=has_manager] EnderItems[{Slot:6b}] run scoreboard players set @s prefix 6
execute unless data entity @s[tag=has_lead] EnderItems[{Slot:7b}] run scoreboard players set @s prefix 7
execute unless data entity @s[tag=has_cr] EnderItems[{Slot:8b}] run scoreboard players set @s prefix 99
execute unless data entity @s[tag=has_art] EnderItems[{Slot:9b}] run scoreboard players set @s prefix 8
execute unless data entity @s[tag=has_pc] EnderItems[{Slot:26b}] run scoreboard players set @s prefix -2

execute unless data entity @s EnderItems[{Slot:18b}] run function lobby:chest_menu/start

execute unless score @s screen matches 0 run function general:rank
execute unless score @s screen matches 0 run function lobby:chest_menu/start_titles