# Keep new playback times inside the windows in village/tick.
execute if block ~ ~-.5 ~ minecraft:coarse_dirt run function matcha:environmental/village/eerie/coarse_dirt

execute if block ~ ~-.5 ~ minecraft:oak_planks run function matcha:environmental/village/eerie/oak_planks

execute if block ~ ~-.5 ~ minecraft:gravel run function matcha:environmental/village/eerie/gravel

execute if block ~ ~-.5 ~ minecraft:suspicious_gravel if stopwatch eerie 1..1.02 run playsound minecraft:block.wooden_door.open player @s ^ ^ ^-3 1

execute if block ~ ~-.5 ~ minecraft:grass_block run function matcha:environmental/village/eerie/grass_block
