##called to give us a view of the 5x5 map.



##finding our coordinates

tag @e[type=minecraft:area_effect_cloud,tag=generation_marker,sort=nearest,limit=1] add temporary_tag
execute as @e[type=minecraft:area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=minecraft:area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=minecraft:area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '{"color":"#88cb8e","strikethrough":true,"text":"▓"}'

tag @e[type=minecraft:area_effect_cloud,tag=temporary_tag] remove temporary_tag

function game:shops/items/map/identify/mapping_1












##Message

function help:f8f03cdfaaf7a0a0d49d97090c4952288dbe72cfcc23b18bf937ac0b93373962
function help:7363ed1b71f4ba2fd2efa19be8971cf35e009b9079c3c123b17271912b7cb08b
function help:3bcab1430f79b635e593de18e8d700b4ef97ccd033728fb7ea0eb7df029a77dc
function help:81157e5c39ff82a6ee4b71744d5b9501c479d6744c3371e1fdce73e9cf7a77f2
function help:f8bea52882af78d8d1a0c7515aa635e62d14607daa9e6ae9045ca4891190fd30




return 1