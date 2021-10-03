##Called by an item dropped from an enderchest

execute as @a[distance=..2] at @s run function lobby:chest_menu/reset_screen

kill @s