execute if block ~ ~-1 ~ minecraft:grass_block run tag @s add pecking_grass
#I thought maybe the retuning early would make this function cheaper, I don't know how expensive checking block states is
execute if entity @s[tag=pecking_grasses] run return fail
execute if block ~ ~-1 ~ minecraft:dirt run tag @s add pecking_dirt
execute if entity @s[tag=pecking_dirts] run return fail
execute if block ~ ~-1 ~ minecraft:mycelium run tag @s add pecking_mycelium
execute if entity @s[tag=pecking_mycelia] run return fail
execute if block ~ ~-1 ~ minecraft:sand run tag @s add pecking_sand
execute if entity @s[tag=pecking_sand] run return fail
execute if block ~ ~-1 ~ minecraft:gravel run tag @s add pecking_gravel
execute if entity @s[tag=pecking_gravel] run return fail
execute if block ~ ~-1 ~ minecraft:red_sand run tag @s add pecking_red_sand