##Function is to see if it should start the countdown

##Toggle ready if player clicked
execute as @a[scores={pregame_click=1..}] at @s run function lobby:pregame/click

##Check if player needs book
execute as @a[x=0,y=66,z=0,distance=..500,gamemode=adventure] at @s unless score $ready_players pregame matches 50.. unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:knowledge_book"}]}] run function lobby:pregame/get_book

##Actionbar titles
title @a[x=0,y=66,z=0,distance=..500,gamemode=adventure,scores={ready=0},tag=!parkour,tag=!tutorial] actionbar [{"text":"You will ","color":"gray"},{"text":"not play.","color":"dark_gray"}]
title @a[x=0,y=66,z=0,distance=..500,gamemode=adventure,scores={ready=1},tag=!parkour,tag=!tutorial] actionbar [{"text":"You will ","color":"white"},{"text":"play.","color":"dark_green"}]

##Count readied players
execute store result score $ready_players pregame if entity @a[scores={ready=1..}]
##Start countdown if it's ready to be started
execute if block 0 92 28 stone_button[powered=true] run function lobby:pregame/press_button

##Continue countdown
execute if score $countdown pregame matches 1.. run function lobby:pregame/countdown


##Button delay
execute if score $button pregame matches 1.. run scoreboard players remove $button pregame 1
execute if score $button pregame matches 0 run function lobby:pregame/replace_button

##When someone drops their book
execute as @a[x=0,y=66,z=0,distance=..500,scores={drop_ready_book=1..}] at @s run function lobby:pregame/drop_ready_book


##Killing arrows
kill @e[type=arrow,nbt={inGround:1b}]