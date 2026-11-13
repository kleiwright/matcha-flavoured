# I put these in tags so it would be easier for mod compat for other devs
execute if block ~ ~-0.8 ~ #matcha:animal_affects/pig_grass_block run tag @s add grass_block
execute if entity @s[tag=grass_block] run return fail

execute if block ~ ~-0.8 ~ #matcha:animal_affects/pig_rooted_dirt run tag @s add rooted_dirt
execute if entity @s[tag=rooted_dirt] run return fail

execute if block ~ ~-0.8 ~ #matcha:animal_affects/pig_gravel run tag @s add gravel
execute if entity @s[tag=gravel] run return fail

execute if block ~ ~-0.8 ~ #matcha:animal_affects/pig_podzol run tag @s add podzol
execute if entity @s[tag=podzol] run return fail

execute if block ~ ~-0.8 ~ #matcha:animal_affects/pig_mycelium run tag @s add mycelium
execute if entity @s[tag=mycelium] run return fail

execute if block ~ ~-0.8 ~ #matcha:animal_affects/pig_soul_sand run tag @s add soul_sand