# Make all nearby normal chickens set their home to me

# Set the home position for every chicken within 10 blocks, to the nearest roost (Probably me, but not always)
execute as @e[type=chicken,distance=..15,tag=!mama] at @s run data modify entity @s home_pos set from entity @n[type=marker,tag=roost] Pos
execute as @e[type=chicken,distance=..15,tag=!mama] run tag @s add has_roost
execute at @e[type=chicken,distance=..15,tag=!mama] run particle heart ~ ~.5 ~ .1 .1 .1 0.1 1 force

execute as @e[type=chicken,distance=..2,tag=mama] at @s run data modify entity @s home_pos set from entity @n[type=marker,tag=roost] Pos
execute as @e[type=chicken,distance=..2,tag=mama] run tag @s add has_roost
execute at @e[type=chicken,distance=..2,tag=mama] run particle heart ~ ~.5 ~ .1 .1 .1 0.1 1 force
execute at @e[type=chicken,distance=2.01..10,tag=mama] run particle angry_villager ~ ~.5 ~ .1 .1 .1 0.1 1 force