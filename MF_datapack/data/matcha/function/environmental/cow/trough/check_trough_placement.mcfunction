# If its in air, set the block to a cauldron
execute if block ~ ~ ~ air run setblock ~ ~ ~ minecraft:cauldron
execute if block ~ ~ ~ cauldron run summon item_display ~ ~0.5 ~ {item:{id:"minecraft:hay_block",count:1,components:{"minecraft:item_model":"matcha:trough_hay"}}}
# If it set proper, add placed
execute if block ~ ~ ~ minecraft:cauldron run tag @s add placed
# On first place, make all the cows come near me
execute if entity @s[tag=placed] run function matcha:environmental/cow/trough/set_all_nearby_cow_home




# A BUG! I can't fix
# If you place a trough, inside of a trough (AKA place a trough inebtween two vertical troughs, on the underside of the upper trough)
# The markers will stack, so two markers will be inside of one trough, and it will take away your trough
# You can get it back if you mine it though
# Its a very weird and not-oft encounted edge case, but if you know of a way to quickly use target selectors to test if another entity of the same type
# is within a distance, let me know