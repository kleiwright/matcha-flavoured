# Check for block it is above here, and add a tag to the chicken
#    This controls animation particles and sounds
execute if score @s matcha.pecking_animation matches 26 run execute as @s run function matcha:environmental/chicken/peck/check_pecking_block

effect give @s slowness 2 99 true
execute if score @s matcha.pecking_animation matches 26 run execute at @s run function matcha:environmental/chicken/peck/peck_animation
execute if score @s matcha.pecking_animation matches 26..30 run rotate @s ~ 90
execute if score @s matcha.pecking_animation matches 21..22 run rotate @s ~ 20
execute if score @s matcha.pecking_animation matches 16..20 run rotate @s ~ 90
execute if score @s matcha.pecking_animation matches 16 run execute at @s run function matcha:environmental/chicken/peck/peck_animation
execute if score @s matcha.pecking_animation matches 11..12 run rotate @s ~ 20
execute if score @s matcha.pecking_animation matches 10 run execute at @s run function matcha:environmental/chicken/peck/peck_animation
execute if score @s matcha.pecking_animation matches 8..10 run rotate @s ~ 90
execute if score @s matcha.pecking_animation matches 4..5 run rotate @s ~ 20
execute if score @s matcha.pecking_animation matches 4 run execute at @s run function matcha:environmental/chicken/peck/peck_animation
execute if score @s matcha.pecking_animation matches 1..3 run rotate @s ~ 90
execute if score @s matcha.pecking_animation matches 1 run execute at @s run particle heart ~ ~1 ~ .3 .1 .3 0.1 1 normal
execute if score @s matcha.pecking_animation matches 1 run execute at @s run effect give @s minecraft:regeneration 10 2 true


# Unlike every other passive animal, we don't care if the chickens are on the same block, because chickens do NOT modify the block when pecking
# execute if score @s matcha.pecking_animation matches 1 run data merge entity @s {EggLayTime:0}
execute if score @s matcha.pecking_animation matches 1 run execute at @s run execute as @s run function matcha:environmental/chicken/peck/peck_block

# Remove animation tags and scores
execute if score @s matcha.pecking_animation matches ..0 run tag @s remove playing_pecking_animation
execute if score @s matcha.pecking_animation matches ..0 run tag @s remove pecking_grass
execute if score @s matcha.pecking_animation matches ..0 run tag @s remove pecking_dirt
execute if score @s matcha.pecking_animation matches ..0 run tag @s remove pecking_mycelium
execute if score @s matcha.pecking_animation matches ..0 run tag @s remove pecking_sand
execute if score @s matcha.pecking_animation matches ..0 run tag @s remove pecking_gravel
execute if score @s matcha.pecking_animation matches ..0 run tag @s remove pecking_red_sand
execute if score @s matcha.pecking_animation matches ..0 run scoreboard players reset @s matcha.pecking_animation