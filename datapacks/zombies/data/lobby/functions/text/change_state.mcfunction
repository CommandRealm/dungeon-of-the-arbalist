##called to change the state.


##Toggle
tag @s remove temporary_tag_2
tag @s add temporary_tag
tag @s[tag=reverse_state] add temporary_tag_2
tag @s add reverse_state
tag @s[tag=temporary_tag_2] remove reverse_state
##Temporary tag is left and cleared in the change_text function.