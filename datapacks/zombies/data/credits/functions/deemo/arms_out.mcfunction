execute store result score $arm deemo_arms run scoreboard players get @s deemo_arms
scoreboard players operation $arm deemo_arms *= -1 deemo_arms
scoreboard players operation $arm deemo_arms += 90 deemo_arms
execute store result entity @s Pose.LeftArm[1] float 1 run scoreboard players get $arm deemo_arms
execute store result entity @s Pose.RightArm[1] float -1 run scoreboard players get $arm deemo_arms