execute store result score $x pug_golem_timer run data get entity @s Pos[0] 100
execute store result score $z pug_golem_timer run data get entity @s Pos[2] 100

execute as @p[gamemode=adventure,team=game] store result score $px pug_golem_timer run data get entity @s Pos[0] 100
execute as @p[gamemode=adventure,team=game] store result score $pz pug_golem_timer run data get entity @s Pos[2] 100
return 1