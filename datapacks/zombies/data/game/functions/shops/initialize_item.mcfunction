##called to initialize an item


data merge entity @s {Tags:["die_between_games","shop_item","raycast"],PickupDelay:32767,Invulnerable:1b,Age:-32768,Item:{tag:{needs_initialization:1b}},Motion:[0.0d,0.0d,0.0d]}


# (we used to remove the needs_initialization tag on the item, however this was causing them to not stack between booster bundle minibosses and purchases so instead I added this tag to the item entity.)
tag @s add initialized