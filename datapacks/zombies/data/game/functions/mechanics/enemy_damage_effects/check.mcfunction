# specific mob hit functions
execute if entity @s[tag=playing,team=game,advancements={game:enemy_damage/wither_skeleton=true}] run function game:mechanics/enemy_damage_effects/hit_by_wither_skeleton
execute if entity @s[tag=playing,team=game,advancements={game:enemy_damage/bandit=true}] run function game:mechanics/enemy_damage_effects/hit_by_bandit
execute if entity @s[tag=playing,team=game,advancements={game:enemy_damage/phantom=true,game:enemy_damage/phantom_enhanced=false}] run function game:mechanics/enemy_damage_effects/hit_by_phantom
execute if entity @s[tag=playing,team=game,advancements={game:enemy_damage/phantom=true,game:enemy_damage/phantom_enhanced=true}] run function game:mechanics/enemy_damage_effects/hit_by_phantom_enhanced


# called whenever the player takes damage
execute unless data entity @s ActiveEffects[{Id:10}] if entity @s[tag=trial_poverty] run function game:trials/poverty/take_damage

# removing check function
advancement revoke @s only game:enemy_damage/check