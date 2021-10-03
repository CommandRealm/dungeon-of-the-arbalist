scoreboard players set $charging pug_golem_timer 100
particle explosion_emitter ^ ^ ^1 ~ ~ ~ 1 0 force
playsound entity.generic.explode master @a ^ ^ ^1 15 1
effect give @a[team=game,gamemode=adventure,distance=..3] instant_damage 1 1 true