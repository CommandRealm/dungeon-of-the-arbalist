##Called to replace the button

setblock 0 92 28 minecraft:stone_button[face=wall,facing=north,powered=false]
particle minecraft:item{item:"minecraft:stone"} 0 92.5 28 0.1 0.1 0.1 0.15 5
playsound minecraft:block.stone.place block @a 0 92 28 1 1
scoreboard players reset $button pregame
return 1