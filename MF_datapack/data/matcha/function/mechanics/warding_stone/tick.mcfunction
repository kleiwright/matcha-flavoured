# Hashiru: If setup hasn't been done, run it. This will also give it the WardingStoneSetup tag
execute as @s[tag=!WardingStoneSetup] run function matcha:mechanics/warding_stone/setup

# Hashiru: If the lodestone block is removed, we can exit out of the rest of the function with run return ...
execute unless block ~ ~ ~ minecraft:lodestone run return run function matcha:mechanics/warding_stone/remove
