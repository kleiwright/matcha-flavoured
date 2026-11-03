# init scoreboard timer for new pigs
execute \
    unless score @s matcha.chicken_planting_cooldown = @s matcha.chicken_planting_cooldown \
    store result score @s matcha.chicken_planting_cooldown \
    run random value 400..600

# decrement scoreboard timer 
scoreboard players remove @s matcha.chicken_planting_cooldown 1

# abort if timer is not negative or not standing on grass OR in tall grass
execute unless score @s matcha.chicken_planting_cooldown matches ..0 run return fail
execute unless block ~ ~-0.5 ~ #matcha:animal_affects/chicken_plantable \
    if block ~ ~ ~ #matcha:animal_affects/chicken_growable \
    run return fail

# Plant short grass into Tall Grass
execute if block ~ ~-0.5 ~ #matcha:animal_affects/chicken_plantable \
    if block ~ ~ ~ minecraft:short_grass \
    run function matcha:environmental/chicken/plant/plant_tall_grass

# Plant short grass
execute if block ~ ~-0.5 ~ #matcha:animal_affects/chicken_plantable \
    if block ~ ~ ~ minecraft:air \
    run function matcha:environmental/chicken/plant/plant_short_grass

# --- Reset timer
execute store result score @s matcha.chicken_planting_cooldown run random value 400..600