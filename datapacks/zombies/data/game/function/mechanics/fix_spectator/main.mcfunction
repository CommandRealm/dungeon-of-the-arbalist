##called to fix spectators
scoreboard players add @a[gamemode=spectator,tag=playing,tag=needs_spectator_fix] spectator_delay 1

execute as @a[gamemode=spectator,tag=playing,tag=needs_spectator_fix,scores={spectator_delay=5..}] at @s run function game:mechanics/fix_spectator/fix
return 1