execute at @s run execute if block ~1 ~-2 ~ minecraft:soul_campfire[lit=true] run execute positioned ~2 ~-2 ~ run function matcha:structure/altar/kill 
execute at @s run execute if block ~1 ~-2 ~ minecraft:soul_campfire[lit=true] run return fail
execute at @s run execute if block ~-1 ~-2 ~ minecraft:soul_campfire[lit=true] run execute positioned ~-2 ~-2 ~ run function matcha:structure/altar/kill
execute at @s run execute if block ~-1 ~-2 ~ minecraft:soul_campfire[lit=true] run return fail
execute at @s run execute if block ~ ~-2 ~1 minecraft:soul_campfire[lit=true] run execute positioned ~ ~-2 ~2 run function matcha:structure/altar/kill
execute at @s run execute if block ~ ~-2 ~1 minecraft:soul_campfire[lit=true] run return fail
execute at @s run execute if block ~ ~-2 ~-1 minecraft:soul_campfire[lit=true] run execute positioned ~ ~-2 ~-2 run function matcha:structure/altar/kill
execute at @s run execute if block ~ ~-2 ~-1 minecraft:soul_campfire[lit=true] run return fail