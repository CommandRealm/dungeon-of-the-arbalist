execute store result score $arm deemo_arms run scoreboard players get @s deemo_arms
execute store result entity @s Pose.LeftArm[1] float 1 run scoreboard players get $arm deemo_arms
execute store result entity @s Pose.RightArm[1] float -1 run scoreboard players get $arm deemo_arms