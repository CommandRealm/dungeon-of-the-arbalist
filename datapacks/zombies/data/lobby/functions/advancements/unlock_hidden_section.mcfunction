##Called to unlock the hidden section of advancements

execute unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 run advancement grant @s only advancements:hidden/root
execute unless score $difficulty settings matches -1 unless score $modifiers settings matches 1 run advancement grant @s only advancements:hidden/hidden-void