scoreboard players set $charging pug_golem_timer 100
particle minecraft:explosion_emitter ^ ^ ^1 ~ ~ ~ 1 0 force
playsound minecraft:entity.generic.explode master @a ^ ^ ^1 15 1
effect give @a[gamemode=adventure,distance=..3,team=game] minecraft:instant_damage 1 1 true
return 1