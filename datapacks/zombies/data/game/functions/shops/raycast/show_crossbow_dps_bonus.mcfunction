# called when we should get dps for crossbow


# storing delay
execute store result score $delay calculate run data get entity @e[type=item,sort=nearest,limit=1,tag=shop_item,tag=temporary_tag] Item.tag.delay
scoreboard players operation @s calculate = @s b_damage
scoreboard players operation @s calculate *= $20 number
scoreboard players operation @s calculate /= $delay calculate



tellraw @s [{"text":"Booster ","color":"#a000eb"},{"text":"DPS","color":"dark_green"},{"text":": ","color":"gray"},{"score":{"objective":"calculate","name":"@s"},"bold":true,"color":"white"}]
