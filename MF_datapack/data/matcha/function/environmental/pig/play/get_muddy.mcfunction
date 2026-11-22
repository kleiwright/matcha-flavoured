execute if entity @s[nbt={variant:"minecraft:temperate"}] run data merge entity @s {variant:"matcha:muddy_temperate"}
execute if entity @s[nbt={variant:"minecraft:warm"}] run data merge entity @s {variant:"matcha:muddy_warm"}
execute if entity @s[nbt={variant:"minecraft:cold"}] run data merge entity @s {variant:"matcha:muddy_cold"}

execute if entity @s[tag=!muddy] if block ~ ~-.8 ~ minecraft:muddy_mangrove_roots run summon item ~ ~.1 ~ {Motion:[0.0,0.1,0.0], Item:{id:"minecraft:mangrove_roots",count:1}}
execute if entity @s[tag=!muddy] run setblock ~ ~-.8 ~ dirt
# Add to timer before tag. Muddy cooldown should not reset, even if muddy pig play
execute \
    store result score @s[tag=!muddy] matcha.muddy_cooldown \
    run random value 900..1200
#Adding a tag so we don't have to check nbt later
tag @s add muddy
execute if entity @s[tag=muddy] run advancement grant @p only matcha:tutorial/pig_play_in_mud