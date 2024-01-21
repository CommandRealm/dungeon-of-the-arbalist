##Runs whenever someone is in the lobby

##Run pregame function when appropriate
execute if score $game state matches 0 run function lobby:pregame/main
execute if score $game state matches 1 run function lobby:midgame/main


##Lobby texts
tag @e[type=area_effect_cloud,tag=lobby_text] remove nearby_player
execute as @e[type=area_effect_cloud,tag=lobby_text] at @s if entity @a[distance=..25] run tag @s add nearby_player
execute if entity @e[type=area_effect_cloud,tag=lobby_text,tag=nearby_player] run function lobby:text/main

##Effects
effect give @a[x=0,y=66,z=0,distance=..500,gamemode=adventure] resistance 2 255 true
effect give @a[x=0,y=66,z=0,distance=..500,gamemode=adventure] weakness 2 255 true

##Particles
execute as @a[x=0,y=66,z=0,distance=..500,gamemode=adventure] at @s run particle ash ~ ~ ~ 3 3 3 0 3 force @s


##Counting leash knots
execute store result score $leash calculate if entity @e[type=leash_knot,x=0,y=66,z=0,distance=..500]
execute as @a[tag=stop_lead_sound] at @s run function lobby:leads/stopsound
execute if score $leash calculate matches ..25 run function lobby:leads/reset


##If someone starts the parkour.
execute as @a[x=-1,y=90,z=85,dx=2,dy=4,dz=3,gamemode=adventure,tag=!parkour] at @s run function lobby:parkour/enter

##If someone is parkouring.
execute if entity @a[tag=parkour] run function lobby:parkour/main

##When someone opens the ender chest.
execute as @a[gamemode=adventure,scores={open_echest=1..}] at @s run function lobby:chest_menu/open_chest

##Seeing if we clicked.
execute as @a[gamemode=adventure,x=0,y=66,z=0,distance=..500] at @s store result score @s click run clear @s #minecraft:click{clickable:1} 0
execute as @a[gamemode=adventure,scores={click=1..}] at @s run function lobby:chest_menu/check_click

##If we have something we shouldn't in the ender chest.
execute as @a[gamemode=adventure,x=0,y=66,z=0,distance=..500,nbt={EnderItems:[{tag:{not_clickable:1}}]}] at @s run function lobby:chest_menu/reset_screen

##If someone dropped something
execute as @e[type=item,nbt={Item:{tag:{clickable:1}}},x=0,y=66,z=0,distance=..500] at @s run function lobby:chest_menu/dropped_item

##Invis for rabbits and slimes
effect give @e[type=slime,x=0,y=66,z=0,distance=..500] invisibility infinite 255 true
effect give @e[type=rabbit,x=0,y=66,z=0,distance=..500] invisibility infinite 255 true

##Calling main NPC
function lobby:npc/main

##Tping model
execute as @e[type=armor_stand,tag=model] at @s run tp @s ~ ~ ~ ~5 ~

##Credits
execute if entity @a[x=24,y=90,z=20,distance=..10,gamemode=adventure] run function credits:main


##Did you know msg
execute as @a[tag=!playing,gamemode=adventure,tag=!seen_info_message_2,x=0,y=90,z=0,distance=125..] at @s run function game:did_you_know/drop_book_to_return

##Clearing glowing off of pillagers
effect clear @e[type=pillager] glowing


##When someone enters the tutorial
execute as @a[x=1,y=81,z=-1,dx=6,dy=10,dz=6,gamemode=adventure,tag=!tutorial] at @s run function lobby:tutorial/enter

##If someone is in the tutorial
execute if entity @a[tag=tutorial,gamemode=adventure] run function lobby:tutorial/main

##Tutorial teleporter

particle sneeze 7 91 26 0.25 1 0.25 0.00 1
particle sneeze 15 83 -78 0.25 1 0.25 0.00 1


execute as @e[type=area_effect_cloud,tag=spin_2,limit=1] at @s positioned as @e[type=area_effect_cloud,tag=tutorial_particles] run particle firework ^ ^ ^-1 0 0 0 0.0 1


execute as @e[type=area_effect_cloud,tag=tutorial_teleporter,scores={particle_pos=0}] at @s at @s[y=89.5,distance=..1] run scoreboard players set @s particle_pos 1
execute as @e[type=area_effect_cloud,tag=tutorial_teleporter,scores={particle_pos=1}] at @s at @s[y=93.5,distance=..1] run scoreboard players set @s particle_pos 0
execute as @e[type=area_effect_cloud,tag=tutorial_teleporter_2,scores={particle_pos=0}] at @s at @s[y=81.5,distance=..1] run scoreboard players set @s particle_pos 1
execute as @e[type=area_effect_cloud,tag=tutorial_teleporter_2,scores={particle_pos=1}] at @s at @s[y=85.5,distance=..1] run scoreboard players set @s particle_pos 0
execute as @e[type=area_effect_cloud,tag=tutorial_particles,scores={particle_pos=0}] at @s run tp @s ~ ~-0.05 ~
execute as @e[type=area_effect_cloud,tag=tutorial_particles,scores={particle_pos=1}] at @s run tp @s ~ ~0.05 ~

##Teleports

execute as @a[x=7,y=90,z=26,distance=..1,gamemode=adventure] at @s run function lobby:teleport_to_tutorial
execute as @a[x=15,y=82,z=-78,distance=..1,gamemode=adventure] at @s run function lobby:teleport_from_tutorial


##Advancements
execute unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 as @a[x=0,y=66,z=0,distance=..500] at @s if block ~ ~ ~ water run advancement grant @s only advancements:lobby-swim
execute unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 run advancement grant @a[x=23,y=90,z=23,distance=..3.5] only advancements:lobby-credits
execute unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 run advancement grant @a[x=-4,y=88,z=155,dx=17,dy=5,dz=5] only advancements:lobby-cr

##If they have all lobby advancements
advancement grant @a[advancements={advancements:lobby-all=false,advancements:lobby-swim=true,advancements:lobby-talk=true,advancements:lobby-parkour=true,advancements:lobby-cosmetic=true,advancements:lobby-credits=true,advancements:lobby-cr=true,advancements:lobby-socials=true}] only advancements:lobby-all

execute as @a[x=0,y=66,z=0,distance=..500] at @s unless entity @s[advancements={advancements:hidden/root=false,advancements:hidden/hidden-parkour=false,advancements:hidden/hidden-journal=false,advancements:hidden/hidden-hardcore=false,advancements:hidden/hidden-nightmare=false,advancements:hidden/hidden-titles=false,advancements:hidden/hidden-void=false}] run function lobby:advancements/unlock_hidden_section

##Unlocking completionist
advancement grant @a[advancements={minecraft:completionist/completionist=false,advancements:game-all=true,advancements:upgrade-all=true,advancements:lobby-all=true,advancements:wins-all=true}] only minecraft:completionist/completionist


execute if entity @a[advancements={minecraft:completionist/completionist=true},tag=!playing] run function completionist:completionist_helix


# intro text
execute as @a[scores={intro_text=1..},tag=!playing] at @s run function lobby:intro_text/main

# starting intro text
execute as @a[tag=show_intro_text,x=7,y=90.5,z=22,distance=1..] at @s run function lobby:intro_text/start