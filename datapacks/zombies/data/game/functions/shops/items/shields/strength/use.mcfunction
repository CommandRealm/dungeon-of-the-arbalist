# called when we use a strength shield


scoreboard players set @s fake_strength 150

playsound block.lodestone.break master @a ~ ~ ~ 1 2
playsound minecraft:entity.blaze.hurt master @s ~ ~ ~ 1 1.25
