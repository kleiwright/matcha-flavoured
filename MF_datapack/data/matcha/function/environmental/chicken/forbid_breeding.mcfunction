#check to see which chicken was bred, and if they were, run fed_effects
execute as @e[type=minecraft:chicken,distance=..8] run function matcha:environmental/animal/store_inlove_score
execute as @e[type=minecraft:chicken,distance=..8,scores={InLove=1..}] run function matcha:environmental/chicken/fed_effects
execute as @e[type=minecraft:chicken,distance=..8,scores={InLove=0..}] run scoreboard players reset @s InLove
advancement revoke @s only matcha:mechanics/chicken/bred_chicken