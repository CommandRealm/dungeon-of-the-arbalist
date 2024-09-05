##Called when a zombie should throw a potion.


execute store result score $rand random run loot insert 0 1 0 loot random:potions
function random:reset_chest

##Summoning AEC that we can potion towards
execute if score $rand random matches 0..2 run summon minecraft:potion ~ ~1.75 ~ {Tags:["potion","needs_motion"],Item:{id:"minecraft:lingering_potion",components:{"minecraft:potion_contents":{potion:"harming"}},count:1},Motion:[0.0d,0.2d,0.0d]}
execute if score $rand random matches 3 run summon minecraft:potion ~ ~1.75 ~ {Tags:["potion","needs_motion"],Item:{id:"minecraft:lingering_potion",components:{"minecraft:potion_contents":{potion:"slowness"}},count:1},Motion:[0.0d,0.2d,0.0d]}
execute if score $rand random matches 4 run summon minecraft:potion ~ ~1.75 ~ {Tags:["potion","needs_motion"],Item:{id:"minecraft:lingering_potion",components:{"minecraft:potion_contents":{custom_color:4473924,custom_effects:[{id:"minecraft:wither",duration:30,amplifier:1b}]}},count:1},Motion:[0.0d,0.2d,0.0d]}



##Killing AEC
tag @e[type=minecraft:potion,tag=needs_motion] remove needs_motion


##Sound
playsound minecraft:entity.splash_potion.throw master @a ~ ~ ~ 0.5 1.5


##Generating a new potion timer
function game:enemy/witch/get_potion_timer
return 1