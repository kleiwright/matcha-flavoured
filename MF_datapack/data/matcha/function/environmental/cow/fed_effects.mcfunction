data merge entity @s {InLove:0}
tag @s add feeding
scoreboard players remove @s matcha.cow_grazing_cooldown 60
# Update home to where player last fed them, UNLESS they have a trough
function matcha:environmental/cow/set_home
playsound minecraft:entity.cow_moody.ambient neutral @a ~ ~ ~ .25