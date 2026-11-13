#Tag self with block type
# We run this again, in case the pig was moved whilst digging
execute as @s run function matcha:environmental/pig/dig/tag_from_block

execute unless block ~ ~-0.8 ~ #matcha:animal_affects/pig_soul_sand run setblock ~ ~-.8 ~ dirt
execute if block ~ ~-0.8 ~ #matcha:animal_affects/pig_soul_sand run setblock ~ ~-.8 ~ soul_soil

# spawn this pig's Gift Loot, tags will be determined there (MUST use kill, because that allows us to check the current entities tags using /loot)
# We can also check the block the mob is on with this LT, so for ex. Each block type can have a different LT
tag @s add matcha.pig_gifting
loot spawn ^ ^-0.8 ^ kill @s
data merge entity @n[type=item] {Motion:[0d,0.3d,0d,0d]}
tag @s remove matcha.pig_gifting
tag @s remove gravel
tag @s remove grass_block
tag @s remove rooted_dirt
tag @s remove mycelium
tag @s remove podzol
tag @s remove soul_sand