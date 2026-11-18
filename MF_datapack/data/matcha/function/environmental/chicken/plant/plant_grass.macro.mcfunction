# Attempt to plant tall grass on the block first
$execute if block ~$(x) ~0.5 ~$(z) minecraft:short_grass run setblock ~$(x) ~0.5 ~$(z) minecraft:tall_grass[half=lower]
$execute if block ~$(x) ~1.5 ~$(z) minecraft:air run execute if block ~$(x) ~0.5 ~$(z) minecraft:tall_grass[half=lower] run setblock ~$(x) ~1.5 ~$(z) minecraft:tall_grass[half=upper]
# Then try to fill the space if it is ait
$execute if block ~$(x) ~0.5 ~$(z) minecraft:air run execute if block ~$(x) ~-0.5 ~$(z) minecraft:farmland run setblock ~$(x) ~-0.5 ~$(z) minecraft:dirt
$execute if block ~$(x) ~0.5 ~$(z) minecraft:air run execute if block ~$(x) ~-0.5 ~$(z) #matcha:animal_affects/chicken_plantable run setblock ~$(x) ~0.5 ~$(z) minecraft:short_grass