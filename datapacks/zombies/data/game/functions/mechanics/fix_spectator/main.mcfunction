##called to fix spectators
scoreboard players add @a[tag=playing,tag=needs_spectator_fix,gamemode=spectator] spectator_delay 1

execute as @a[tag=playing,tag=needs_spectator_fix,gamemode=spectator,scores={spectator_delay=5..}] at @s run function game:mechanics/fix_spectator/fix