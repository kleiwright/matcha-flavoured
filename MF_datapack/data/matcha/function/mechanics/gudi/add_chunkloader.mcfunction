# Runs as the pet being bound
summon minecraft:ender_pearl ~ 1000 ~ {NoGravity:1b,Tags:["chunkloader"]}
execute positioned ~ 1000 ~ run data modify entity @n[type=minecraft:ender_pearl,tag=chunkloader] Owner set from entity @s UUID