# specific mob hit functions
execute if entity @s[tag=playing,team=game,advancements={game:enemy_damage/wither_skeleton=true}] run function game:mechanics/enemy_damage_effects/hit_by_wither_skeleton
execute if entity @s[tag=playing,team=game,advancements={game:enemy_damage/bandit=true}] run function game:mechanics/enemy_damage_effects/hit_by_bandit

# removing check function
advancement revoke @s only game:enemy_damage/check