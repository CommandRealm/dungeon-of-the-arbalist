##Called when a zombie should throw a potion.


execute store result score $rand random run loot insert 0 1 0 loot random:potions
function random:reset_chest

##Summoning AEC that we can potion towards
execute if score $rand random matches 0..2 run summon potion ~ ~1.75 ~ {Tags:["potion","needs_motion"],Item:{id:"minecraft:lingering_potion",Count:1b,tag:{Potion:"harming"}},Motion:[0.0d,0.2d,0.0d]}
execute if score $rand random matches 3 run summon potion ~ ~1.75 ~ {Tags:["potion","needs_motion"],Item:{id:"minecraft:lingering_potion",Count:1b,tag:{Potion:"slowness"}},Motion:[0.0d,0.2d,0.0d]}
execute if score $rand random matches 4 run summon potion ~ ~1.75 ~ {Tags:["potion","needs_motion"],Item:{id:"minecraft:lingering_potion",Count:1b,tag:{custom_potion_effects:[{id:"minecraft:wither",duration:30,amplifier:1b}],CustomPotionColor:4473924}},Motion:[0.0d,0.2d,0.0d]}



##Killing AEC
tag @e[type=potion,tag=needs_motion] remove needs_motion


##Sound
playsound minecraft:entity.splash_potion.throw master @a ~ ~ ~ 0.5 1.5


##Generating a new potion timer
function game:enemy/witch/get_potion_timer