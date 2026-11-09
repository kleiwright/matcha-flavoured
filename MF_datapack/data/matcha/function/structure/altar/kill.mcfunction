loot spawn ~ ~2 ~ loot matcha:chests/altar/abandoned_camp
execute positioned ~ ~2 ~ run execute as @n[type=item] run function matcha:structure/altar/summon_loot/animation
tag @n[type=minecraft:armor_stand,tag=WardingStoneSetup] remove altar