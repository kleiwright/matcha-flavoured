# If its in air, set the block to a roost
execute if block ~ ~ ~ #matcha:custom_block_placeable run setblock ~ ~ ~ minecraft:leaf_litter[segment_amount=3]

# Abort if it did not set
execute unless block ~ ~ ~ minecraft:leaf_litter run return fail

execute if entity @s[tag=twig] run \
    summon item_display ~ ~0.5 ~ {item:{id:"minecraft:poisonous_potato",count:1,components:{"minecraft:item_model":"matcha:roost_twig"}}}

execute if entity @s[tag=hay] run \
    summon item_display ~ ~0.5 ~ {item:{id:"minecraft:poisonous_potato",count:1,components:{"minecraft:item_model":"matcha:roost_hay"}}}

tag @s add placed

# On first place, make all the chicken set their home
function matcha:environmental/chicken/roost/set_all_nearby_chicken_home
