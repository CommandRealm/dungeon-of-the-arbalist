# called to get a random crossbow

playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 0.67
playsound minecraft:entity.shulker_bullet.hit master @s ~ ~ ~ 1 0.75

# if we HAD golden
execute if score @s crossbow_id matches 39 run scoreboard players remove @s loot_multiplier 30

tag @s add temp

# called to see what crossbows we have
execute as @e[type=marker,tag=trial_collector_crossbow] at @s run scoreboard players operation @s calculate = @s id
execute as @e[type=marker,tag=trial_collector_crossbow] at @s run scoreboard players operation @s calculate -= @p[tag=temp] id
# after subtraction, any marker with calculate 0 is ours.




# getting crossbow
scoreboard players operation @s crossbow_id = @e[type=marker,tag=trial_collector_crossbow,scores={calculate=0},sort=random,limit=1] crossbow_id
execute if entity @s[nbt={Inventory:[{Slot:0b,id:"minecraft:crossbow"}]}] run function game:mechanics/get_crossbow
function game:mechanics/get_offhand_item

# if we HAVE golden
execute if score @s crossbow_id matches 39 run scoreboard players add @s loot_multiplier 30
scoreboard players reset @s life_kills

# if its our last time
execute if score @s trial_collector matches 0 run function game:trials/collector/get_timer

tag @s remove temp