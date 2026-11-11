say EXTEND
execute positioned ~-1 ~0.5 ~ run tp @e[type=!marker,distance=..0.9] ~ ~3.5 ~
execute positioned ~1 ~0.5 ~ run tp @e[type=!marker,distance=..0.9] ~ ~3.5 ~
execute positioned ~ ~0.5 ~ run tp @e[type=!marker,distance=..0.9] ~ ~3.5 ~
summon minecraft:wind_charge ~-1 ~4.5 ~ {Motion:[0.0,-1.0,0.0]}
summon minecraft:wind_charge ~1 ~4.5 ~ {Motion:[0.0,-1.0,0.0]}
summon minecraft:wind_charge ~ ~4.5 ~ {Motion:[0.0,-1.0,0.0]}
fill ~-1 ~1 ~ ~1 ~3 ~ waxed_copper_grate destroy
fill ~-1 ~ ~ ~1 ~ ~ waxed_copper_grate
setblock ~ ~3 ~ target[power=5]
