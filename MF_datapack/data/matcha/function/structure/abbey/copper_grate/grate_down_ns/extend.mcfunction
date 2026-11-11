particle block{block_state:"minecraft:stone_bricks"} ~-.5 ~-3 ~ 0 0 1 0 50 normal
particle block{block_state:"minecraft:stone_bricks"} ~.5 ~-3 ~ 0 0 1 0 50 normal
execute positioned ~ ~-3 ~ run execute as @e[distance=..0.9] run damage @s 20 minecraft:cramming
execute positioned ~ ~-3 ~1 run execute as @e[distance=..0.9] run damage @s 20 minecraft:cramming
execute positioned ~ ~-3 ~-1 run execute as @e[distance=..0.9] run damage @s 20 minecraft:cramming
playsound minecraft:entity.iron_golem.death
#Replace with proper pushing function later
fill ~ ~-1 ~-1 ~ ~-3 ~1 waxed_copper_grate destroy
fill ~ ~ ~-1 ~ ~ ~1 waxed_copper_grate
setblock ~ ~-3 ~ target[power=5]
