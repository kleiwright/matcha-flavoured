# Checking if there is a cow at the current checking position
execute as @e[type=minecraft:cow,tag=!milking,dx=0,dy=0,dz=0,limit=1,sort=nearest] run tag @s add milking

# Increase by 0.5 blocks for each check, also the score is to prevent checking too much
execute unless entity @e[type=minecraft:cow,tag=milking,limit=1,sort=nearest] if score @s matcha.raydist matches ..16 positioned ^ ^ ^0.5 run function matcha:environmental/cow/raycast/step
scoreboard players add @s matcha.raydist 1

# Execute milking if the cow is found
execute if entity @e[type=minecraft:cow,tag=milking,limit=1,sort=nearest] run function matcha:environmental/cow/milk_cow_with_bucket

# Try edge cases if the main raycast fail
execute if score @s matcha.raydist matches 17.. run function matcha:environmental/cow/raycast/edge_case