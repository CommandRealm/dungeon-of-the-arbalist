# called to get a random crossbow

playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 0.67
playsound minecraft:entity.shulker_bullet.hit master @s ~ ~ ~ 1 0.75

# if we HAD golden
execute if score @s crossbow_id matches 39 run scoreboard players remove @s loot_multiplier 30


# rng (different for different waves)
execute if score $wave game matches 0..4 run scoreboard players set $mod random 9
execute if score $wave game matches 5..9 run scoreboard players set $mod random 28
execute if score $wave game matches 10.. run scoreboard players set $mod random 64

# rng for adventure
execute if score $mode game matches 1.. run scoreboard players set $mod random 64

function random:random

# getting crossbow
scoreboard players operation @s crossbow_id = $rand random
execute if entity @s[nbt={Inventory:[{Slot:0b,id:"minecraft:crossbow"}]}] run function game:mechanics/get_crossbow
function game:mechanics/get_offhand_item

# if we HAVE golden
execute if score @s crossbow_id matches 39 run scoreboard players add @s loot_multiplier 30
scoreboard players reset @s life_kills

# if its our last time
execute if score @s modifier_random matches 0 run function game:modifiers/random_crossbow/get_timer

