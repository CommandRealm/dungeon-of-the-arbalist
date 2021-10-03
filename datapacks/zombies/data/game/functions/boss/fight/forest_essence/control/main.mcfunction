##Called when forest essence is controlling something.

execute at @e[tag=forest_essence_controlled] run particle sneeze ~ ~1 ~ 0.33 0.33 0.33 0.15 1 force @a
execute unless entity @e[tag=forest_essence_controlled] unless score $transform boss matches 1.. run function game:boss/fight/forest_essence/control/start