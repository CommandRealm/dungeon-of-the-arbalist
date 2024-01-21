# called when a keeper is hit

# converting our health to a percentage
scoreboard players operation @s attack = @s enemy_health
scoreboard players operation @s attack *= $100 number
scoreboard players operation @s attack /= @s attack2


# speed
execute if score @s attack matches 90..100 run attribute @s generic.movement_speed base set 0.35
execute if score @s attack matches 80..89 run attribute @s generic.movement_speed base set 0.375
execute if score @s attack matches 70..79 run attribute @s generic.movement_speed base set 0.4
execute if score @s attack matches 60..69 run attribute @s generic.movement_speed base set 0.425
execute if score @s attack matches 50..59 run attribute @s generic.movement_speed base set 0.45
execute if score @s attack matches 40..49 run attribute @s generic.movement_speed base set 0.475
execute if score @s attack matches 30..39 run attribute @s generic.movement_speed base set 0.5
execute if score @s attack matches 20..29 run attribute @s generic.movement_speed base set 0.525
execute if score @s attack matches 10..19 run attribute @s generic.movement_speed base set 0.55
execute if score @s attack matches 0..9 run attribute @s generic.movement_speed base set 0.575


# damage
execute if score @s attack matches 90..100 run attribute @s generic.attack_damage base set 2
execute if score @s attack matches 80..89 run attribute @s generic.attack_damage base set 3
execute if score @s attack matches 70..79 run attribute @s generic.attack_damage base set 4
execute if score @s attack matches 60..69 run attribute @s generic.attack_damage base set 5
execute if score @s attack matches 50..59 run attribute @s generic.attack_damage base set 6
execute if score @s attack matches 40..49 run attribute @s generic.attack_damage base set 7
execute if score @s attack matches 30..39 run attribute @s generic.attack_damage base set 8
execute if score @s attack matches 20..29 run attribute @s generic.attack_damage base set 9
execute if score @s attack matches 10..19 run attribute @s generic.attack_damage base set 10
execute if score @s attack matches 0..9 run attribute @s generic.attack_damage base set 11

execute if score @s[tag=!transformed] attack matches ..50 run function game:enemy/volition/keeper/transform


# sounds and particles
particle squid_ink ~ ~1 ~ 0.2 0.4 0.2 0.1 15
playsound minecraft:entity.spider.death master @a ~ ~ ~ 1 0
playsound minecraft:entity.spider.hurt master @a ~ ~ ~ 1 0