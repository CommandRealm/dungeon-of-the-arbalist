# caelled to use a rope

# clear
clear @s lead{shop_item:1b} 1

# resistance and blindness
effect give @s resistance 1 0 true
effect give @s minecraft:blindness 1 0 true



# saving ourselves
tp @s @e[type=marker,tag=zombie_spawnpoint,sort=nearest,limit=1]

# particle
execute at @s positioned ^ ^ ^1 anchored eyes run particle minecraft:flash ~ ~ ~ 0 0 0 0 1 force @s
execute at @s run particle item lead ~ ~0.75 ~ 0 1 0 0.1 100

# advancement
execute if score $volition game matches 1 unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 if score $wave game matches 50.. run advancement grant @s only advancements:volition/item-rope

# sounds
execute at @s run playsound minecraft:entity.leash_knot.break master @a ~ ~ ~ 1 0.8
execute at @s run playsound minecraft:item.crossbow.loading_end master @a ~ ~ ~ 1 1
execute at @s run playsound minecraft:item.shield.block master @a ~ ~ ~ 1 0.6