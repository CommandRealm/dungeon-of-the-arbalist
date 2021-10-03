##Called to check the blindness levels.
execute as @a[tag=playing,nbt={ActiveEffects:[{Id:15b}]}] at @s unless entity @s[y=0,distance=..30] store result score @s calculate run data get entity @s ActiveEffects[{Id:15b}].Duration 1
execute as @a[tag=playing,nbt={ActiveEffects:[{Id:15b}]},scores={calculate=61..}] unless entity @s[y=0,distance=..30] at @s run function game:mechanics/removing_blindness/limit_blindness
