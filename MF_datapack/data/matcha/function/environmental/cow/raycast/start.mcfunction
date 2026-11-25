# Immediately clear a milk bucket so if the raycasting fail player wont get free milk
clear @s minecraft:milk_bucket[max_stack_size=1] 1

# Kill any dropped milk bucket that is not custom
execute as @e[type=item,nbt={Item:{id:"minecraft:milk_bucket"}}] unless data entity @s Item.components."minecraft:max_stack_size" run kill @s

# Setup
scoreboard players set @s matcha.raydist 0
execute at @s anchored eyes positioned ^ ^ ^ run function matcha:environmental/cow/raycast/step