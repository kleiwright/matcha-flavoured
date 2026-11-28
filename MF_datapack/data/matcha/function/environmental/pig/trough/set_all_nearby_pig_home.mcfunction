execute as @e[type=pig,distance=..30] run data merge entity @s {home_radius:12}
# Set the home position for every pig within 30 blocks, to the nearest trough (Probably me)
execute as @e[type=pig,distance=..30] run data modify entity @s home_pos set from entity @n[type=marker,tag=pig_trough_broken] Pos
execute as @e[type=pig,distance=..30] run tag @s add has_trough
execute at @e[type=pig,distance=..30] run particle heart ~ ~2 ~ .3 .1 .3 0.1 1 force