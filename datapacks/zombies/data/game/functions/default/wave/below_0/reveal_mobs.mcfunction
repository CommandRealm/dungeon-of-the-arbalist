# called to reveal ourself

execute as @e[type=#minecraft:enemy,tag=enemy,tag=!shopkeeper,team=enemy,tag=!tutorial_enemy] at @s unless entity @s[type=zombie,tag=phantom_part] run effect give @s[tag=!boss_room_enemy,tag=!tutorial_enemy,tag=!boss,tag=!miniboss] glowing infinite 0 true
execute as @a[tag=playing,tag=mechanics,gamemode=adventure,team=game] at @s run playsound minecraft:entity.guardian.hurt master @s ~ ~ ~ 0.5 1