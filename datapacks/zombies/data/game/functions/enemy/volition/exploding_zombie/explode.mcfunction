# called when we should explode

# explosion
particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1

# damaging nearby players
effect give @a[distance=..2] instant_damage 1 1
effect give @a[distance=..3] instant_damage 1 0


execute if entity @s[tag=enhanced] run effect give @a[distance=..4] instant_damage 1 1
execute if entity @s[tag=enhanced] run effect give @a[distance=..5] instant_damage 1 0

# damaging nearby enemy bois
tag @s add temporary_tag
tag @e[tag=enemy,distance=..4.25,nbt={Invulnerable:1b}] add temporary_tag

##Dealing damage to enemies.
execute as @e[tag=enemy,distance=..4.25,tag=!temporary_tag] at @s run effect give @s luck 1 127 true
execute as @e[tag=enemy,distance=..4.25,tag=!temporary_tag] at @s run effect give @s bad_omen 1 127 true
execute as @e[tag=enemy,distance=..4.25,tag=!temporary_tag] at @s run effect give @s instant_damage 1 0 true
execute as @e[tag=enemy,distance=..4.25,tag=!temporary_tag] at @s run effect give @s instant_health 1 0 true
execute as @e[tag=enemy,distance=..4.25,tag=!temporary_tag,tag=exploding_zombie] at @s run tag @s add check_bomber_tnt_advancement
execute as @e[tag=enemy,distance=..4.25,tag=!temporary_tag] at @s run function game:enemy/take_damage

tag @e[tag=enemy,distance=..4.25,tag=temporary_tag] remove temporary_tag

tp @s 0 0 0
kill @s