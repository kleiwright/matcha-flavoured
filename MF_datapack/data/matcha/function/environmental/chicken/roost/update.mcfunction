#If it is air, kill it and summon item
execute at @s if block ~ ~ ~ leaf_litter run return fail

execute at @s[tag=twig] run loot spawn ~ ~ ~ loot matcha:blocks/chicken_roost_twig_broken
execute at @s[tag=hay] run loot spawn ~ ~ ~ loot matcha:blocks/chicken_roost_hay_broken
execute at @s run kill @n[type=item_display]
# Remove chickens from has_roost tag, so that they are not persistent, this WILL NOT change the home_pos
execute as @e[type=minecraft:chicken,distance=..16] run tag @s remove has_roost
kill @s