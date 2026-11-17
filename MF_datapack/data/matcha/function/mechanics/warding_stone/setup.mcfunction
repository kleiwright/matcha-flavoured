# Check that it was not placed in a Forbidden area. If it was, stop and run the warding_stone/forbidden function
execute if predicate matcha:in_dungeon run return run function matcha:mechanics/warding_stone/forbidden

# If both the current pos and y+1 pos are INVALID blocks, stop and run the invalid function
execute unless block ~ ~ ~ #matcha:warding_stone_placeable run return run function matcha:mechanics/warding_stone/invalid

# Set lodestone block
setblock ~ ~ ~ minecraft:lodestone

# Play the sound effect
playsound minecraft:entity.wither.spawn block @a ~ ~ ~ .25

# Spawn particles
particle minecraft:sculk_soul ~ ~.5 ~ .25 .1 .25 .05 10
particle minecraft:soul_fire_flame ~ ~.5 ~ .5 .1 .5 .1 10

# add setup tag
tag @s add WardingStoneSetup
