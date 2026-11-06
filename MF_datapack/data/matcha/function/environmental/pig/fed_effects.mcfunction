data merge entity @s {InLove:0}
scoreboard players remove @s matcha.pig_gifting_cooldown 150
# Update home to where player last fed them, UNLESS they have a trough
function matcha:environmental/pig/set_home
#Play pig sound if fed
playsound minecraft:entity.pig.ambient neutral @a