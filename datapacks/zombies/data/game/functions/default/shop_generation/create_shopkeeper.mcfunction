##called to create a shopkeeper


summon pillager ~ ~-0.5 ~ {PersistenceRequired:1b,NoAI:1b,active_effects:[{id:"minecraft:resistance",duration:10000,amplifier:126,show_particles:false}],HandItems:[],Tags:["shopkeeper","die_between_games","needs_adjustments"],CustomNameVisible:1b}

loot insert 0 1 0 loot game:shopkeeper_names
data modify entity @e[type=pillager,tag=needs_adjustments,limit=1] CustomName set from block 0 1 0 Items[{Slot:0b}].tag.display.Name
function random:reset_chest

effect give @e[tag=shopkeeper] resistance infinite 126 true

##tag removal
tag @e[type=pillager,tag=needs_adjustments] remove needs_adjustments