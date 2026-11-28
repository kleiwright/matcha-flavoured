# Called by cow/trough/place since cattle and sheep share troughs
execute as @e[type=sheep,distance=..30] run data merge entity @s {home_radius:20}
# Set the home position for every sheep within 30 blocks, to the nearest trough (Probably me)
execute as @e[type=sheep,distance=..30] run data modify entity @s home_pos set from entity @n[type=marker,tag=trough] Pos
execute as @e[type=sheep,distance=..30] run tag @s add has_trough
execute at @e[type=sheep,distance=..30] run particle heart ~ ~2 ~ .3 .1 .3 0.1 1 force