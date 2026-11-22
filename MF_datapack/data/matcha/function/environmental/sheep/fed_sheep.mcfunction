execute as @e[type=minecraft:sheep,distance=..8] run function matcha:environmental/animal/store_inlove_score
execute as @e[type=minecraft:sheep,distance=..8,scores={InLove=1..}] run function matcha:environmental/sheep/fed_effects
execute as @e[type=minecraft:sheep,distance=..8,scores={InLove=0..}] run scoreboard players reset @s InLove
advancement revoke @s only matcha:mechanics/sheep/fed_sheep