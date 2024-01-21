##Called to give us (the zombie) a new leap timer

execute store result score @s attack run loot insert 0 1 0 loot random:leap_timer
function random:reset_chest

scoreboard players remove @s[type=wither_skeleton] attack 50

scoreboard players remove @s[tag=enhanced] attack 50
execute if score @s attack matches ..0 run scoreboard players set @s attack 20