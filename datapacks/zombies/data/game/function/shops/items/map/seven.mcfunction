##called to give us a view of the 7x7 map.



##finding our coordinates

tag @e[type=minecraft:area_effect_cloud,tag=generation_marker,sort=nearest,limit=1] add temporary_tag
execute as @e[type=minecraft:area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=minecraft:area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=minecraft:area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '{"color":"#88cb8e","strikethrough":true,"text":"▓"}'

tag @e[type=minecraft:area_effect_cloud,tag=temporary_tag] remove temporary_tag

function game:shops/items/map/identify/mapping_1












##Message
function help:192856d9d3529952e14a13223ccc14871987a08c5f7ee73876b19278927bdb4c
function help:063a3e3ba470139fb7fecc9018e2095c7c6b0ba09c840da8e405afb6ed105e04
function help:2aad0323b6c19d4a74e7f9f2bb0c05b392edcfcf966c2f2d19acf6ed8970792c
function help:3acff0e19e31be44e2bc6b620e4440651ec8283c4860701bebe1960d095ef2bd
function help:f93a1dc8c112f335134f8ffe5cd4c78df7baa69a91e08108010f65cc6a6a1990
function help:f99a9b115cb7ed405f741760a1a1cd7dc37fab6cebe0198ebabbdab3eeb209e9
function help:960092f9b9d381877aaae5679411469622b38501c91625cc648268859de76a5d

return 1