effect give @s slowness 2 99 true
execute if score @s matcha.diving_animation matches 26 run execute at @s run function matcha:environmental/chicken/dive/dive_animation
execute if score @s matcha.diving_animation matches 26 run playsound minecraft:entity.generic.splash neutral @a ~ ~ ~ 0.5
execute if score @s matcha.diving_animation matches 26..30 run rotate @s ~ 90
execute if score @s matcha.diving_animation matches 21..22 run rotate @s ~ 20
execute if score @s matcha.diving_animation matches 16..20 run rotate @s ~ 90
execute if score @s matcha.diving_animation matches 16 run execute at @s run function matcha:environmental/chicken/dive/dive_animation
execute if score @s matcha.diving_animation matches 16 run playsound minecraft:entity.generic.splash neutral @a ~ ~ ~ 0.5
execute if score @s matcha.diving_animation matches 11..12 run rotate @s ~ 20
execute if score @s matcha.diving_animation matches 10 run execute at @s run function matcha:environmental/chicken/dive/dive_animation
execute if score @s matcha.diving_animation matches 8..10 run rotate @s ~ 90
execute if score @s matcha.diving_animation matches 4..5 run rotate @s ~ 20
execute if score @s matcha.diving_animation matches 4 run playsound minecraft:entity.generic.splash neutral @a ~ ~ ~ 0.5
execute if score @s matcha.diving_animation matches 4 run execute at @s run function matcha:environmental/chicken/dive/dive_animation
execute if score @s matcha.diving_animation matches 1..3 run rotate @s ~ 90
execute if score @s matcha.diving_animation matches 1 run execute at @s run particle heart ~ ~1 ~ .3 .1 .3 0.1 1 normal
execute if score @s matcha.diving_animation matches 1 run execute at @s run effect give @s minecraft:regeneration 10 2 true
execute if score @s matcha.diving_animation matches 1 run execute at @s run effect give @s minecraft:water_breathing 120 0 true


# Unlike every other passive animal, we don't care if the chickens are on the same block, because chickens do NOT modify the block when pecking

execute if score @s matcha.diving_animation matches 1 run execute at @s run execute \
    if block ~ ~ ~ #matcha:animal_affects/duck_divable \
    run execute as @s run function matcha:environmental/chicken/dive/dive

# Remove animation tags and scores
execute if score @s matcha.diving_animation matches ..0 run tag @s remove playing_diving_animation
execute if score @s matcha.diving_animation matches ..0 run scoreboard players reset @s matcha.diving_animation