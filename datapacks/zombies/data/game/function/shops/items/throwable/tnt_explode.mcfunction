##Called when the tnt explodes

tag @e[distance=..4.25,tag=enemy,nbt={Invulnerable:1b}] add temporary_tag

##Dealing damage to enemies.
execute as @e[distance=..4.25,tag=enemy,tag=!temporary_tag] at @s run effect give @s minecraft:luck 1 127 true
execute as @e[distance=..4.25,tag=enemy,tag=!temporary_tag] at @s run effect give @s minecraft:bad_omen 1 127 true
execute as @e[distance=..4.25,tag=enemy,tag=!temporary_tag] at @s run effect give @s minecraft:instant_damage 1 0 true
execute as @e[distance=..4.25,tag=enemy,tag=!temporary_tag] at @s run effect give @s minecraft:instant_health 1 0 true
execute as @e[distance=..4.25,tag=enemy,tag=!temporary_tag] at @s run function game:enemy/take_damage

tag @e[distance=..4.25,tag=enemy,tag=temporary_tag] remove temporary_tag

##sound and particles
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1
return 1