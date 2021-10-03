##Called when we use the glowing wave.

##score reset
scoreboard players reset @s glowing_wave

##effect
effect give @a[tag=playing] glowing 15 255 false

##sound
playsound minecraft:entity.illusioner.cast_spell master @a ~ ~ ~ 1 2

##killing item
execute positioned ~ ~1 ~ run kill @e[type=item,nbt={Item:{id:"minecraft:phantom_membrane"}},tag=!shop_item,distance=..5,sort=nearest,limit=1]