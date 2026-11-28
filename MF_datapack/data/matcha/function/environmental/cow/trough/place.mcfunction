# If its in air, set the block to a cauldron
execute if block ~ ~ ~ #matcha:custom_block_placeable run setblock ~ ~ ~ minecraft:cauldron
execute if block ~ ~ ~ cauldron run summon item_display ~ ~0.5 ~ {item:{id:"minecraft:hay_block",count:1,components:{"minecraft:item_model":"matcha:trough"}}}

# If it set proper, add placed
execute if block ~ ~ ~ minecraft:cauldron run tag @s add placed

# On first place, make all the cows come near me
execute if entity @s[tag=placed] run function matcha:environmental/cow/trough/set_all_nearby_cow_home
# Cattle troughs also work for Sheep
execute if entity @s[tag=placed] run function matcha:environmental/sheep/trough/set_all_nearby_sheep_home
