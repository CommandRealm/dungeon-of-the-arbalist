# called to set the worldborder

# if someone is at or above the score
execute store result score $ticks parkour_time run worldborder get
execute if score $ticks parkour_time matches 59000000.. run scoreboard players remove @a[tag=elytra_course] parkour_start 1000000

worldborder center 0 0
worldborder set 58000000
worldborder add 1000000 10000