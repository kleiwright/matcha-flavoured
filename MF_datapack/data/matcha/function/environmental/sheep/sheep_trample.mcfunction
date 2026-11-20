# init scoreboard timer for new chickens
execute \
    unless score @s matcha.sheep_trample_cooldown = @s matcha.sheep_trample_cooldown \
    store result score @s matcha.sheep_trample_cooldown \
    run random value 60..120

# decrement scoreboard timer 
scoreboard players remove @s matcha.sheep_trample_cooldown 1

# abort if timer is not negative or not standing on grass OR in tall grass
execute unless score @s matcha.sheep_trample_cooldown matches ..0 run return fail


# Show trample dirt particles
execute if block ~ ~-0.5 ~ minecraft:dirt \
    run particle block{block_state:"minecraft:dirt"} ~ ~ ~ .25 .25 .25 0.1 20 normal

# Tample dirt
execute if block ~ ~-0.5 ~ minecraft:dirt \
    run setblock ~ ~-0.5 ~ minecraft:coarse_dirt


# --- Reset timer
execute store result score @s matcha.sheep_trample_cooldown run random value 60..120