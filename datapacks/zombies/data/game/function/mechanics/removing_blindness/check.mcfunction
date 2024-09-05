##Called to check the blindness levels.
execute as @a[tag=playing,nbt={active_effects:[{id:"minecraft:blindness"}]}] at @s unless entity @s[y=0,distance=..30] store result score @s calculate run data get entity @s active_effects[{id:"minecraft:blindness"}].duration 1
execute as @a[tag=playing,scores={calculate=61..},nbt={active_effects:[{id:"minecraft:blindness"}]}] unless entity @s[y=0,distance=..30] at @s run function game:mechanics/removing_blindness/limit_blindness

return 1