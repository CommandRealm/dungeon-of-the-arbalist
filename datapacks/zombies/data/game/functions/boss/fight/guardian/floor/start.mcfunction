##Called to start the floor attack.

##Choosing segments
execute store result score $viscean_floor_1 boss run loot insert 0 1 0 loot random:4
function random:reset_chest
scoreboard players operation $viscean_floor boss = $viscean_floor_1 boss
function game:boss/fight/guardian/floor/change_floor


execute store result score $viscean_floor_2 boss run loot insert 0 1 0 loot random:4
function random:reset_chest

scoreboard players operation $viscean_floor boss = $viscean_floor_2 boss
function game:boss/fight/guardian/floor/change_floor

##Sound
execute as @a[tag=playing,tag=in_boss_room,gamemode=adventure] at @s run playsound minecraft:block.end_portal_frame.fill master @s ~ ~ ~ 1 1.25


##Setting timer
scoreboard players set $attack boss 60