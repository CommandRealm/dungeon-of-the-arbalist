##called to check pre-wave

##start
execute if score $time game matches 1 run function game:default/start


##Calling pre wave
execute if score $cutscene game matches 0 run function game:default/pre-wave

##calling the cutscene.
execute if score $cutscene game matches 1 run function game:default/cutscene/main