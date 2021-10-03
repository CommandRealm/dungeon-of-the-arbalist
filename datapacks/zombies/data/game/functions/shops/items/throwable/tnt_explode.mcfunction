##Called when the tnt explodes

tag @e[tag=enemy,distance=..4.25,nbt={Invulnerable:1b}] add temporary_tag

##Dealing damage to enemies.
execute as @e[tag=enemy,distance=..4.25,tag=!temporary_tag] at @s run effect give @s luck 1 127 true
execute as @e[tag=enemy,distance=..4.25,tag=!temporary_tag] at @s run effect give @s bad_omen 1 127 true
execute as @e[tag=enemy,distance=..4.25,tag=!temporary_tag] at @s run effect give @s instant_damage 1 0 true
execute as @e[tag=enemy,distance=..4.25,tag=!temporary_tag] at @s run effect give @s instant_health 1 0 true
execute as @e[tag=enemy,distance=..4.25,tag=!temporary_tag] at @s run function game:enemy/take_damage

tag @e[tag=enemy,distance=..4.25,tag=temporary_tag] remove temporary_tag

##sound and particles
particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1