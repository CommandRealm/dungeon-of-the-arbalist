##Called to spawn in a booster
summon minecraft:item 11 83 -59 {Tags:["dont_die_in_tutorial"],PickupDelay:30s,Motion:[0.0d,0.15d,0.0d],Item:{id:"minecraft:light_blue_dye",components:{"minecraft:custom_name":'{"color":"#3eefff","extra":[{"color":"gray","text":" Booster"}],"italic":false,"text":"Speed"}',"minecraft:lore":['{"color":"gray","italic":false,"text":"Obtain to increase your speed booster."}','{"color":"gray","italic":false,"text":"Increases movement speed."}'],"minecraft:custom_data":{shop_item:1b,stat_boost:1b,needs_initialization:1b}},count:1}}
playsound minecraft:entity.item.pickup master @a 11 83 -59 1 0.9

return 1