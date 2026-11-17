execute if entity @s[tag=!invalid] run particle minecraft:large_smoke ~ ~.25 ~ .25 .5 .25 .01 20
execute if entity @s[tag=!invalid] run kill @e[distance=..3,type=item,nbt={Item:{id:"minecraft:lodestone"}}]
execute if entity @s[tag=!invalid] run summon item ~ ~ ~ {Item:{id:"minecraft:blaze_powder",count:1}}
kill @s
