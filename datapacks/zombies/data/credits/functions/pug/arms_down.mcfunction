execute store result score $arm pug_arms run scoreboard players get @s pug_arms
scoreboard players operation $arm pug_arms *= -1 pug_arms
scoreboard players operation $arm pug_arms += 130 pug_arms
execute store result entity @s Pose.LeftArm[0] float 1 run scoreboard players get $arm pug_arms
execute store result entity @s Pose.RightArm[0] float 1 run scoreboard players get $arm pug_arms