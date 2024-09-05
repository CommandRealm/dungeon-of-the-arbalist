##called to give us a view of the 9x9 map.



##finding our coordinates

tag @e[type=minecraft:area_effect_cloud,tag=generation_marker,sort=nearest,limit=1] add temporary_tag
execute as @e[type=minecraft:area_effect_cloud,tag=mapping_marker] at @s if score @s grid_x = @e[type=minecraft:area_effect_cloud,tag=temporary_tag,limit=1] grid_x if score @s grid_z = @e[type=minecraft:area_effect_cloud,tag=temporary_tag,limit=1] grid_z run data modify entity @s CustomName set value '{"color":"#88cb8e","strikethrough":true,"text":"▓"}'

tag @e[type=minecraft:area_effect_cloud,tag=temporary_tag] remove temporary_tag

function game:shops/items/map/identify/mapping_1











##Message
function help:0b64aa6e8cf0f0e6245c632948eaa2d11bf842b68f669521ed1144647fd89acb
function help:bfa729f671a19e8b4ba58a719f642f54499299eba5ef1c4241129f23980bf740
function help:d12b09d862b324bde93874f6a31e2ca535ae923416ece6e72b855419ae6ff729
function help:ca805fe63a05d8c54a2f76db6104a8e810ae6f9cbd98562476d3f1753f2f3142
function help:37ce1e0a9952443622cce027bee2dabb689c33506e54ccda23f2a720063f1539
function help:d861bdbd8193513a2e150e7df82546aeeb76235825506dba141951ac19e1f382
function help:c76b477e92cf0cadfbffcd949d46c6aa33651807b64e5771f0f5ac8fa6f1f5c4
function help:9addd632b601a5fa8bb06e70db997479e06a019c09df3ec6d73ce74ef4cdb965
function help:d0d5b55496888e08f2a7759567195fd41bb946d307729b9b84a5f9bda76b8085

return 1