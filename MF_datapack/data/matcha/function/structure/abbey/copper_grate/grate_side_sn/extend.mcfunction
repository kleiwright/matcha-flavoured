say EXTEND
# execute positioned ~1 ~ ~-1 run tp @e[type=!marker,distance=..0.9] ~ ~ ~-2
# execute positioned ~ ~ ~-1 run tp @e[type=!marker,distance=..0.9] ~ ~ ~-2
# execute positioned ~-1 ~ ~-1 run tp @e[type=!marker,distance=..0.9] ~ ~ ~-2
# execute positioned ~1 ~ ~-2 run tp @e[type=!marker,distance=..0.9] ~ ~ ~-1
# execute positioned ~ ~ ~-2 run tp @e[type=!marker,distance=..0.9] ~ ~ ~-1
# execute positioned ~-1 ~ ~-2 run tp @e[type=!marker,distance=..0.9] ~ ~ ~-1
fill ~ ~1 ~-1 ~ ~-1 ~-3 waxed_copper_grate destroy
fill ~ ~1 ~ ~ ~-1 ~ waxed_copper_grate
setblock ~ ~ ~-3 target[power=5]
