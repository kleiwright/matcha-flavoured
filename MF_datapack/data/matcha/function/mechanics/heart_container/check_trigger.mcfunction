scoreboard players set @s undo_heartbreaker 0
scoreboard players enable @s undo_heartbreaker
execute if score @s minimum_hearts matches 20.. run return fail
# If they have less than 18, undo the heartbreaker
scoreboard players add @s minimum_hearts 4
function matcha:mechanics/heart_container/decrease_minimum_hearts