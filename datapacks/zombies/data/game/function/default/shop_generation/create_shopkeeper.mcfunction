##called to create a shopkeeper


summon minecraft:pillager ~ ~-0.5 ~ {PersistenceRequired:1b,NoAI:1b,HandItems:[],Tags:["shopkeeper","die_between_games","needs_adjustments"],CustomNameVisible:1b,active_effects:[{id:"minecraft:resistance",duration:10000,amplifier:126b,show_particles:0b}]}

loot insert 0 1 0 loot game:shopkeeper_names
data modify entity @e[type=minecraft:pillager,tag=needs_adjustments,limit=1] CustomName set from block 0 1 0 Items[{Slot:0b}].components."minecraft:custom_name"
function random:reset_chest

effect give @e[tag=shopkeeper] minecraft:resistance 100000 126 true

##tag removal
tag @e[type=minecraft:pillager,tag=needs_adjustments] remove needs_adjustments
return 1