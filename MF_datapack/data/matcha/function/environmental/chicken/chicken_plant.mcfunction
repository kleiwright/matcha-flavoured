# init scoreboard timer for new chickens
execute \
    unless score @s matcha.chicken_planting_cooldown = @s matcha.chicken_planting_cooldown \
    store result score @s matcha.chicken_planting_cooldown \
    run random value 400..600

# decrement scoreboard timer 
scoreboard players remove @s matcha.chicken_planting_cooldown 1

# abort if timer is not negative or not standing on grass OR in tall grass
execute unless score @s matcha.chicken_planting_cooldown matches ..0 run return fail

# Duck Plant Seagrass
execute unless block ~ ~-1 ~ minecraft:water \
    if block ~ ~ ~ minecraft:water \
    if predicate matcha:mob_checks/is_duck \
    run function matcha:environmental/chicken/plant/plant_seagrass

# Normal chicken, plant grass
function matcha:environmental/chicken/plant/plant_grass


# --- Reset timer
execute store result score @s matcha.chicken_planting_cooldown run random value 400..600