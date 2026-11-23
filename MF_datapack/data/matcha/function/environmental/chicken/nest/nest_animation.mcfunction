particle block{block_state:"minecraft:short_grass"} ^ ^ ^0.5 .1 .1 .1 0.1 5 normal
particle block{block_state:"minecraft:short_grass"} ~ ~.1 ~ .1 .1 .1 0.1 15 normal
particle happy_villager ~ ~.1 ~ .2 .1 .2 0.1 3 normal
tp @s ~ ~.05 ~
# Teleport them up a bit so that their wings flap
playsound minecraft:block.grass.place neutral @a
playsound minecraft:block.crop.break neutral @a
