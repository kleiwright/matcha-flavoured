#check to see which pig was bred, and if they were, run fed_effects
execute as @e[type=minecraft:pig,distance=..8] run function matcha:environmental/animal/store_inlove_score
execute as @e[type=minecraft:pig,distance=..8,scores={InLove=1..}] run function matcha:environmental/pig/fed_effects
execute as @e[type=minecraft:pig,distance=..8,scores={InLove=0..}] run scoreboard players reset @s InLove
advancement revoke @s only matcha:mechanics/pig/bred_pig