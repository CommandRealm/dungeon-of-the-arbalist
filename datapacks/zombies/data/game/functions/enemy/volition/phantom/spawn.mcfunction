# called to summon phantom

# called to spawn a mob spawner


# giving them all the same id
scoreboard players set @e[type=phantom,tag=phantom_part,tag=needs_initialization] enemy_health 120
scoreboard players set @e[type=phantom,tag=phantom_part,tag=needs_initialization] enemy_loot_table 1


scoreboard players set @e[type=zombie,tag=phantom_part,tag=needs_initialization] enemy_health 1000000000

scoreboard players add $mob_id id 1

scoreboard players operation @e[type=phantom,tag=phantom_part,tag=needs_initialization] id = $mob_id id

execute as @e[type=phantom,tag=phantom_part,tag=needs_initialization] at @s run scoreboard players operation @e[type=zombie,tag=phantom_part,tag=needs_initialization] id = @s id


