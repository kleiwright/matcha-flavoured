# Immediately clear a milk bucket so if the raycasting fail player wont get free milk
clear @s minecraft:milk_bucket 1
scoreboard players set @s matcha.raydist 0
execute at @s anchored eyes positioned ^ ^ ^ run function matcha:environmental/cow/raycast/step