# called to break the helmet
item replace entity @s armor.head with air
tag @s remove has_gas_mask
playsound minecraft:item.shield.break master @a ~ ~ ~ 1 0.67
execute positioned ~ ~1.65 ~ positioned ^ ^0.33 ^ run particle block polished_deepslate ~ ~ ~ 0 0 0 0 100