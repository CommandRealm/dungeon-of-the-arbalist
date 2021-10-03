##Called when the ravager is meant to attack.
execute if score $attack_id boss matches 1 at @e[type=ravager,tag=boss] positioned ~ ~1 ~ run function game:boss/fight/ravager/shoot
execute if score $attack_id boss matches 2 as @e[type=ravager,tag=boss] at @s run function game:boss/fight/ravager/leap
execute if score $attack_id boss matches 3 as @e[type=ravager,tag=boss] at @s run function game:boss/fight/ravager/chomp