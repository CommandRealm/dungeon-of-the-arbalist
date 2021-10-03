##Main firing function for the obsidian waves.
execute if score $attack boss matches 2147483627 run function game:boss/fight/mummy/wave/firing/teleport
execute if score $attack boss matches 2147483617 run function game:boss/fight/mummy/wave/firing/warn
execute if score $attack boss matches 2147483607 as @e[type=wither_skeleton,tag=boss,limit=1] at @s anchored eyes run function game:boss/fight/mummy/wave/firing/fire

execute if score $attack boss matches 2147483597 run function game:boss/fight/mummy/wave/firing/teleport
execute if score $attack boss matches 2147483587 run function game:boss/fight/mummy/wave/firing/warn
execute if score $attack boss matches 2147483577 as @e[type=wither_skeleton,tag=boss,limit=1] at @s anchored eyes run function game:boss/fight/mummy/wave/firing/fire

execute if score $attack boss matches 2147483567 run function game:boss/fight/mummy/wave/firing/teleport
execute if score $attack boss matches 2147483557 run function game:boss/fight/mummy/wave/firing/warn
execute if score $attack boss matches 2147483547 as @e[type=wither_skeleton,tag=boss,limit=1] at @s anchored eyes run function game:boss/fight/mummy/wave/firing/fire

execute if score $attack boss matches 2147483537 run function game:boss/fight/mummy/wave/firing/teleport
execute if score $attack boss matches 2147483527 run function game:boss/fight/mummy/wave/firing/warn
execute if score $attack boss matches 2147483517 as @e[type=wither_skeleton,tag=boss,limit=1] at @s anchored eyes run function game:boss/fight/mummy/wave/firing/fire


##Re-enabling AI
execute unless entity @e[type=area_effect_cloud,tag=wave_start_point] run function game:boss/fight/mummy/wave/firing/over