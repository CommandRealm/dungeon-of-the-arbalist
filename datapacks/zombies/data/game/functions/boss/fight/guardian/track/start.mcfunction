##Called to start the tracking attack

tag @a remove tracking
tag @r[tag=playing,tag=in_boss_room,gamemode=adventure,team=game] add tracking

scoreboard players set $attack boss 50

##Sound
execute at @r[tag=playing,tag=in_boss_room,gamemode=adventure,tag=tracking] run playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~