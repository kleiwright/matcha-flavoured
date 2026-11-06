tag @s add matcha.chicken_gifting
tag @s add diving
execute if block ~ ~ ~ minecraft:seagrass run tag @s add seagrass
loot spawn ~ ~0.1 ~ kill @s
data merge entity @n[type=item] {Motion:[0d,0.3d,0d,0d]}
execute if block ~ ~ ~ minecraft:seagrass run playsound minecraft:block.crop.break neutral @a
execute if block ~ ~ ~ minecraft:seagrass run setblock ~ ~ ~ water
tag @s remove diving
tag @s remove seagrass
tag @s remove matcha.chicken_gifting