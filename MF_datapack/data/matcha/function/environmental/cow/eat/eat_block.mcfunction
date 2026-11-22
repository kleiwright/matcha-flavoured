#update hapiness first, so it doesn't become sad too soon
function matcha:environmental/cow/update_happiness

# Ate Fully Grown Wheat crop (Fully grown bonus)
execute if block ^ ^0.5 ^1 minecraft:wheat[age=7] run tag @s add fed
execute if block ^ ^0.5 ^1 minecraft:wheat[age=7] run scoreboard players add @s matcha.milk_reserve 3
# Eat immature wheat
execute unless entity @s[tag=fed] run execute if block ^ ^0.5 ^1 minecraft:wheat run tag @s add fed
execute if block ^ ^0.5 ^1 minecraft:wheat run scoreboard players add @s matcha.milk_reserve 2
#Replant Wheat
execute if block ^ ^0.5 ^1 minecraft:wheat run setblock ^ ^0.5 ^1 minecraft:wheat[age=1]

# Ate Hay Bale
execute if block ^ ^0.5 ^1 minecraft:hay_block run tag @s add fed
execute if block ^ ^0.5 ^1 minecraft:hay_block run scoreboard players add @s matcha.milk_reserve 10
#Destroy Hay bale
execute if block ^ ^0.5 ^1 minecraft:hay_block run setblock ^ ^0.5 ^1 minecraft:air


# If the eating animation failed (Was pushed away from target block, or something), then re-add hungry, so it can keep trying
tag @s[tag=!fed] add hungry

# On success give the closest player the cow eating adv
execute if entity @s[tag=fed] run advancement grant @p only matcha:tutorial/cow_eats_block