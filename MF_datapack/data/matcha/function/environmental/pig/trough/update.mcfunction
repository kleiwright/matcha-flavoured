#If it is air, kill it and summon item
execute at @s if block ~ ~ ~ cauldron run return fail

# If it failed to place, give back the trough
execute unless entity @s[tag=placed] at @s run loot spawn ~ ~ ~ loot matcha:blocks/pig_trough
# If it did place, only give back the hay
execute if entity @s[tag=placed] at @s run loot spawn ~ ~ ~ loot matcha:blocks/pig_trough_broken

execute at @s run kill @n[type=item_display]
kill @s