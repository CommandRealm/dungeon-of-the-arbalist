# called to summon a marker

summon marker ~ ~ ~ {Tags:["die_between_games","on_death_timer","footprint_marker","needs_init"]}
scoreboard players operation @e[type=marker,tag=needs_init,limit=1] id = @s id

scoreboard players set @e[type=marker,tag=needs_init,limit=1] death_timer 200

tag @e[type=marker,tag=needs_init,limit=1] remove needs_init