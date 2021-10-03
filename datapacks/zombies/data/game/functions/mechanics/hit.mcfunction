##Called when we hit an enemy

advancement revoke @s only game:hit
execute unless score $difficulty settings matches -1 run scoreboard players add @s[tag=!tutorial] global_hits 1
scoreboard players add @s local_hits 1