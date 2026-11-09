say EXTEND
execute positioned ~ ~0.5 ~-1 run tp @e[type=!marker,distance=..0.9] ~ ~2.5 ~
execute positioned ~ ~0.5 ~1 run tp @e[type=!marker,distance=..0.9] ~ ~2.5 ~
execute positioned ~ ~0.5 ~ run tp @e[type=!marker,distance=..0.9] ~ ~2.5 ~
summon minecraft:wind_charge ~ ~3.5 ~-1 {Motion:[0.0,-1.0,0.0]}
summon minecraft:wind_charge ~ ~3.5 ~1 {Motion:[0.0,-1.0,0.0]}
summon minecraft:wind_charge ~ ~3.5 ~ {Motion:[0.0,-1.0,0.0]}
fill ~ ~1 ~-1 ~ ~2 ~1 waxed_copper_grate destroy
fill ~ ~ ~-1 ~ ~ ~1 waxed_copper_grate
setblock ~ ~2 ~ target[power=5]
