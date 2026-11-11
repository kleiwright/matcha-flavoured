#Put this in another function so we only have to check conditions ONCE
execute as @e[type=minecraft:pig,distance=..8] run function matcha:environmental/animal/store_inlove_score
execute as @e[type=minecraft:pig,distance=..8,scores={InLove=1..}] run function matcha:environmental/pig/water_bottle_clean_effects
execute as @e[type=minecraft:pig,distance=..8,scores={InLove=0..}] run scoreboard players reset @s InLove
advancement revoke KleiWright only matcha:mechanics/pig/clean_pig_with_water_bottle