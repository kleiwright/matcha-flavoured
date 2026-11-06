# Make all unhappy cows, come to me
execute as @e[type=cow,distance=..50,tag=!happy] run data merge entity @s {home_radius:5}
# Set the home position for every cow within 50 blocks, to the nearest trough (Probably me)
execute as @e[type=cow,distance=..50] run data modify entity @s home_pos set from entity @n[type=marker,tag=trough] Pos
execute as @e[type=cow,distance=..50] run tag @s add has_trough
execute at @e[type=cow,distance=..50] run particle heart ~ ~2 ~ .3 .1 .3 0.1 1 force
#Debug
# say Set All Cows Nearby Home
# effect give @e[type=cow,distance=..50] minecraft:glowing 3 0 true