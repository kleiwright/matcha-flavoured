# execute positioned ~-1 ~0.5 ~ run tp @e[type=!marker,distance=..0.9] ~ ~3.5 ~
# execute positioned ~1 ~0.5 ~ run tp @e[type=!marker,distance=..0.9] ~ ~3.5 ~
# execute positioned ~ ~0.5 ~ run tp @e[type=!marker,distance=..0.9] ~ ~3.5 ~
# summon minecraft:wind_charge ~-1 ~4.5 ~ {Motion:[0.0,-1.0,0.0]}
# summon minecraft:wind_charge ~1 ~4.5 ~ {Motion:[0.0,-1.0,0.0]}
# summon minecraft:wind_charge ~ ~4.5 ~ {Motion:[0.0,-1.0,0.0]}
particle block{block_state:"minecraft:stone_bricks"} ~ ~-3 ~-.5 1 0 0 0 50 normal
particle block{block_state:"minecraft:stone_bricks"} ~ ~-3 ~.5 1 0 0 0 50 normal
execute positioned ~ ~-3 ~ run execute as @e[distance=..0.9] run damage @s 20 minecraft:cramming
execute positioned ~1 ~-3 ~ run execute as @e[distance=..0.9] run damage @s 20 minecraft:cramming
execute positioned ~-1 ~-3 ~ run execute as @e[distance=..0.9] run damage @s 20 minecraft:cramming
playsound minecraft:entity.iron_golem.death
#Replace with proper pushing function later
fill ~-1 ~-1 ~ ~1 ~-3 ~ waxed_copper_grate destroy
fill ~-1 ~ ~ ~1 ~ ~ waxed_copper_grate
setblock ~ ~-3 ~ target[power=5]
