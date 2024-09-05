##Called to start the tracking attack

tag @a remove tracking
tag @r[gamemode=adventure,tag=playing,tag=in_boss_room,team=game] add tracking

scoreboard players set $attack boss 50

##Sound
execute at @r[gamemode=adventure,tag=playing,tag=in_boss_room,tag=tracking] run playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~
return 1