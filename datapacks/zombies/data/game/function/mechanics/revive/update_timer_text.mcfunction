##called to update the timer text

scoreboard players set @s revive_second 20

scoreboard players operation $calculate calculate = @s revive_time
scoreboard players operation $calculate calculate /= $20 number



loot spawn 0 0 0 loot game:name/revive_timer_text
execute positioned ~ ~1.75 ~ as @e[type=minecraft:area_effect_cloud,tag=revive_time_text,sort=nearest,limit=1] at @s run data modify entity @s CustomName set from entity @e[type=minecraft:item,x=0,y=0,z=0,distance=..5,sort=nearest,limit=1,nbt={Item:{id:"minecraft:gold_block"}}] Item.components."minecraft:custom_name"
kill @e[type=minecraft:item,x=0,y=0,z=0,distance=..5,nbt={Item:{id:"minecraft:gold_block"}}]

##if its 1 second
execute positioned ~ ~1.75 ~ if score $calculate calculate matches 1 run data modify entity @e[type=minecraft:area_effect_cloud,tag=revive_time_text,sort=nearest,limit=1] CustomName set value '{"color":"gray","extra":[{"color":"green","text":"Revive within "},{"bold":"1b","color":"dark_green","text":"40"},{"color":"green","text":" seconds."},{"color":"gray","text":" -"}],"text":"- "}'

return 1