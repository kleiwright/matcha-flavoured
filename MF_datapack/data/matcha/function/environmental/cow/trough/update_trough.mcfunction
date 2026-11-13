#If it is air, kill it and summon item
execute at @s if block ~ ~ ~ cauldron run return fail
execute at @s if block ~ ~ ~ air run loot spawn ~ ~ ~ loot minecraft:blocks/hay_block
execute at @s if block ~ ~ ~ air run kill @n[type=item_display]
execute at @s if block ~ ~ ~ air run kill @s