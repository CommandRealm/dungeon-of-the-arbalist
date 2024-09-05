execute as @e[type=minecraft:zombie_villager,tag=cpt_forge_miniboss,tag=!cpt_shooting,tag=!cpt_cooldown] at @s run function game:enemy/cpt_forge/chargeup
execute as @e[type=minecraft:zombie_villager,tag=cpt_forge_miniboss,tag=cpt_shooting,tag=!cpt_cooldown] at @s run function game:enemy/cpt_forge/shooting
execute as @e[type=minecraft:zombie_villager,tag=cpt_forge_miniboss,tag=cpt_cooldown,tag=!cpt_shooting] at @s run function game:enemy/cpt_forge/cooldown

execute as @e[type=minecraft:fireball,tag=cpt_fireball] at @s run function game:enemy/cpt_forge/fireball

return 1