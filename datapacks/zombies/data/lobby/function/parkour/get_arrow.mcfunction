##called to give us our arrow
clear @s minecraft:tipped_arrow
kill @e[type=minecraft:item,x=0,y=66,z=0,distance=..500,nbt={Item:{id:"minecraft:tipped_arrow"}}]

item replace entity @s hotbar.0 with minecraft:tipped_arrow[minecraft:potion_contents={custom_color:6717527},minecraft:custom_name='{"color":"green","extra":[{"color":"gray","text":" to reset."}],"italic":false,"text":"Drop"}',minecraft:hide_additional_tooltip={}]
return 1