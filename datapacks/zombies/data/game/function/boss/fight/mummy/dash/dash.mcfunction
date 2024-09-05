##Called to dash
effect clear @s minecraft:weakness
effect clear @s minecraft:slowness
effect give @s minecraft:speed 100 7 true

##sound
playsound minecraft:entity.evoker_fangs.attack master @a ~ ~ ~ 1 1.15
return 1