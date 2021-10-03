execute store result score $arm boba_arms run scoreboard players get @s boba_arms
scoreboard players operation $arm boba_arms += 69 boba_arms
execute store result entity @s Pose.LeftArm[0] float 1 run scoreboard players get $arm boba_arms
execute store result entity @s Pose.RightArm[0] float 1 run scoreboard players get $arm boba_arms