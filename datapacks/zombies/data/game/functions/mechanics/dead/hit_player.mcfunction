##Called when we shoot another player.


advancement revoke @s only game:dead_player_hit_player

tellraw @a [{"selector":"@s"},{"text":" gave their life for an arbalist.","color":"red"}]

##clearing effects
effect clear @a[tag=playing,team=game] luck
effect clear @a[tag=playing,team=game] water_breathing

kill @s
scoreboard players set @s respawn_timer 200