
execute as @e[type=minecraft:cow,distance=..8] run function matcha:environmental/animal/store_inlove_score
execute as @e[type=minecraft:cow,distance=..8,scores={InLove=1..}] run function matcha:environmental/cow/fed_effects
execute as @e[type=minecraft:cow,distance=..8,scores={InLove=0..}] run scoreboard players reset @s InLove
advancement revoke @s only matcha:mechanics/cow/fed_cow