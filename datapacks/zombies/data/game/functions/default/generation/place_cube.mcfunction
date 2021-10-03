##Clearing previous structure block and redstone blocks
fill ~ ~-14 ~ ~ ~-40 ~ air

##replacing water
execute at @e[type=area_effect_cloud,tag=base_generation_marker] positioned ~-16 ~-15 ~-16 run fill ~31 ~31 ~31 ~ ~ ~ barrier


##Random number
execute store result score $rand random run loot insert 0 1 0 loot random:4
function random:reset_chest

execute if score $rand random matches 0 run setblock ~ ~-16 ~ minecraft:structure_block{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,rotation:"NONE",posX:-16,posY:1,posZ:-16,sizeX:32,sizeY:32,sizeZ:32,showboundingbox:0b,name:"",id:"minecraft:structure_block",author:"?",mode:"LOAD"}
execute if score $rand random matches 1 run setblock ~ ~-16 ~ minecraft:structure_block{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,rotation:"CLOCKWISE_90",posX:15,posY:1,posZ:-16,sizeX:32,sizeY:32,sizeZ:32,showboundingbox:0b,name:"",id:"minecraft:structure_block",author:"?",mode:"LOAD"}
execute if score $rand random matches 2 run setblock ~ ~-16 ~ minecraft:structure_block{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,rotation:"CLOCKWISE_180",posX:15,posY:1,posZ:15,sizeX:32,sizeY:32,sizeZ:32,showboundingbox:0b,name:"",id:"minecraft:structure_block",author:"?",mode:"LOAD"}
execute if score $rand random matches 3 run setblock ~ ~-16 ~ minecraft:structure_block{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,rotation:"COUNTERCLOCKWISE_90",posX:-16,posY:1,posZ:15,sizeX:32,sizeY:32,sizeZ:32,showboundingbox:0b,name:"",id:"minecraft:structure_block",author:"?",mode:"LOAD"}


data modify block ~ ~-16 ~ name set from storage minecraft:generation name

##clearing previous entities
execute positioned ~-16 ~-16 ~-16 run kill @e[type=!area_effect_cloud,dx=31,dy=31,dz=31]

##summon aec
execute at @e[type=area_effect_cloud,tag=base_generation_marker] run summon area_effect_cloud ~ ~ ~ {Tags:["generation_marker","needs_grid_score"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}


##giving grid score
scoreboard players operation @e[type=area_effect_cloud,tag=needs_grid_score] grid_x = @e[type=area_effect_cloud,tag=base_generation_marker] grid_x
scoreboard players operation @e[type=area_effect_cloud,tag=needs_grid_score] grid_z = @e[type=area_effect_cloud,tag=base_generation_marker] grid_z


##Placing hallways
execute store result score $rand random run loot insert 0 1 0 loot random:5
function random:reset_chest
execute if score $rand random matches 0 run setblock ~ ~-18 ~ minecraft:structure_block{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,rotation:"NONE",posX:-5,posY:12,posZ:16,sizeX:10,sizeY:10,sizeZ:15,showboundingbox:0b,name:"ns_hallway_0",id:"minecraft:structure_block",author:"?",mode:"LOAD"}
execute if score $rand random matches 1 run setblock ~ ~-18 ~ minecraft:structure_block{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,rotation:"NONE",posX:-5,posY:12,posZ:16,sizeX:10,sizeY:10,sizeZ:15,showboundingbox:0b,name:"ns_hallway_1",id:"minecraft:structure_block",author:"?",mode:"LOAD"}
execute if score $rand random matches 2 run setblock ~ ~-18 ~ minecraft:structure_block{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,rotation:"NONE",posX:-5,posY:12,posZ:16,sizeX:10,sizeY:10,sizeZ:15,showboundingbox:0b,name:"ns_hallway_2",id:"minecraft:structure_block",author:"?",mode:"LOAD"}
execute if score $rand random matches 3 run setblock ~ ~-18 ~ minecraft:structure_block{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,rotation:"NONE",posX:-5,posY:12,posZ:16,sizeX:10,sizeY:10,sizeZ:15,showboundingbox:0b,name:"ns_hallway_3",id:"minecraft:structure_block",author:"?",mode:"LOAD"}
execute if score $rand random matches 4 run setblock ~ ~-18 ~ minecraft:structure_block{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,rotation:"NONE",posX:-5,posY:12,posZ:16,sizeX:10,sizeY:10,sizeZ:15,showboundingbox:0b,name:"ns_hallway_4",id:"minecraft:structure_block",author:"?",mode:"LOAD"}



execute store result score $rand random run loot insert 0 1 0 loot random:5
function random:reset_chest
execute if score $rand random matches 0 run setblock ~ ~-19 ~ minecraft:structure_block{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,rotation:"NONE",posX:-5,posY:13,posZ:-21,sizeX:10,sizeY:10,sizeZ:15,showboundingbox:0b,name:"ns_hallway_0",id:"minecraft:structure_block",author:"?",mode:"LOAD"}
execute if score $rand random matches 1 run setblock ~ ~-19 ~ minecraft:structure_block{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,rotation:"NONE",posX:-5,posY:13,posZ:-21,sizeX:10,sizeY:10,sizeZ:15,showboundingbox:0b,name:"ns_hallway_1",id:"minecraft:structure_block",author:"?",mode:"LOAD"}
execute if score $rand random matches 2 run setblock ~ ~-19 ~ minecraft:structure_block{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,rotation:"NONE",posX:-5,posY:13,posZ:-21,sizeX:10,sizeY:10,sizeZ:15,showboundingbox:0b,name:"ns_hallway_2",id:"minecraft:structure_block",author:"?",mode:"LOAD"}
execute if score $rand random matches 3 run setblock ~ ~-19 ~ minecraft:structure_block{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,rotation:"NONE",posX:-5,posY:13,posZ:-21,sizeX:10,sizeY:10,sizeZ:15,showboundingbox:0b,name:"ns_hallway_3",id:"minecraft:structure_block",author:"?",mode:"LOAD"}
execute if score $rand random matches 4 run setblock ~ ~-19 ~ minecraft:structure_block{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,rotation:"NONE",posX:-5,posY:13,posZ:-21,sizeX:10,sizeY:10,sizeZ:15,showboundingbox:0b,name:"ns_hallway_4",id:"minecraft:structure_block",author:"?",mode:"LOAD"}



execute store result score $rand random run loot insert 0 1 0 loot random:5
function random:reset_chest
execute if score $rand random matches 0 run setblock ~ ~-21 ~ minecraft:structure_block{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,rotation:"NONE",posX:-21,posY:15,posZ:-5,sizeX:10,sizeY:10,sizeZ:15,showboundingbox:0b,name:"ew_hallway_0",id:"minecraft:structure_block",author:"?",mode:"LOAD"}
execute if score $rand random matches 1 run setblock ~ ~-21 ~ minecraft:structure_block{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,rotation:"NONE",posX:-21,posY:15,posZ:-5,sizeX:10,sizeY:10,sizeZ:15,showboundingbox:0b,name:"ew_hallway_1",id:"minecraft:structure_block",author:"?",mode:"LOAD"}
execute if score $rand random matches 2 run setblock ~ ~-21 ~ minecraft:structure_block{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,rotation:"NONE",posX:-21,posY:15,posZ:-5,sizeX:10,sizeY:10,sizeZ:15,showboundingbox:0b,name:"ew_hallway_2",id:"minecraft:structure_block",author:"?",mode:"LOAD"}
execute if score $rand random matches 3 run setblock ~ ~-21 ~ minecraft:structure_block{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,rotation:"NONE",posX:-21,posY:15,posZ:-5,sizeX:10,sizeY:10,sizeZ:15,showboundingbox:0b,name:"ew_hallway_3",id:"minecraft:structure_block",author:"?",mode:"LOAD"}
execute if score $rand random matches 4 run setblock ~ ~-21 ~ minecraft:structure_block{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,rotation:"NONE",posX:-21,posY:15,posZ:-5,sizeX:10,sizeY:10,sizeZ:15,showboundingbox:0b,name:"ew_hallway_4",id:"minecraft:structure_block",author:"?",mode:"LOAD"}


execute store result score $rand random run loot insert 0 1 0 loot random:5
function random:reset_chest
execute if score $rand random matches 0 run setblock ~ ~-22 ~ minecraft:structure_block{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,rotation:"NONE",posX:16,posY:16,posZ:-5,sizeX:10,sizeY:10,sizeZ:15,showboundingbox:0b,name:"ew_hallway_0",id:"minecraft:structure_block",author:"?",mode:"LOAD"}
execute if score $rand random matches 1 run setblock ~ ~-22 ~ minecraft:structure_block{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,rotation:"NONE",posX:16,posY:16,posZ:-5,sizeX:10,sizeY:10,sizeZ:15,showboundingbox:0b,name:"ew_hallway_1",id:"minecraft:structure_block",author:"?",mode:"LOAD"}
execute if score $rand random matches 2 run setblock ~ ~-22 ~ minecraft:structure_block{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,rotation:"NONE",posX:16,posY:16,posZ:-5,sizeX:10,sizeY:10,sizeZ:15,showboundingbox:0b,name:"ew_hallway_2",id:"minecraft:structure_block",author:"?",mode:"LOAD"}
execute if score $rand random matches 3 run setblock ~ ~-22 ~ minecraft:structure_block{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,rotation:"NONE",posX:16,posY:16,posZ:-5,sizeX:10,sizeY:10,sizeZ:15,showboundingbox:0b,name:"ew_hallway_3",id:"minecraft:structure_block",author:"?",mode:"LOAD"}
execute if score $rand random matches 4 run setblock ~ ~-22 ~ minecraft:structure_block{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,rotation:"NONE",posX:16,posY:16,posZ:-5,sizeX:10,sizeY:10,sizeZ:15,showboundingbox:0b,name:"ew_hallway_4",id:"minecraft:structure_block",author:"?",mode:"LOAD"}

##activating hallways

execute positioned ~-16 ~-16 ~15 run tp @e[type=!magma_cube,dx=31,dy=31,dz=31] 0 0 0
kill @e[type=!area_effect_cloud,x=0,y=0,z=0,distance=..5]
execute positioned ~-16 ~-16 ~15 run kill @e[type=!area_effect_cloud,dx=31,dy=31,dz=31]


##2094 66 -94
##
##2090 62 -76
##
##2098 69 -65
##
##~-4 ~3 ~-30 ~3 ~-4 ~-19





##removing grid score tag
tag @e[type=area_effect_cloud,tag=needs_grid_score] remove needs_grid_score


##powering the original block
summon area_effect_cloud ~ ~-17 ~ {Tags:["die_between_games","set_redstone_block_for_generation","generation_cube"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
summon area_effect_cloud ~ ~-20 ~ {Tags:["die_between_games","set_redstone_block_for_generation","generation_other"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
summon area_effect_cloud ~ ~-23 ~ {Tags:["die_between_games","set_redstone_block_for_generation","generation_other_2"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
