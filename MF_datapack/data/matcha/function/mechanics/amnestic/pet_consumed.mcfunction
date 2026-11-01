# Make a sound
execute at @s run playsound minecraft:block.amethyst_block.break neutral @a ~ ~ ~ 1 0.7

# Remove owner and make stand
# Forget whistles by removing all scoreboard tags
data remove entity @s Owner
data remove entity @s Sitting
data remove entity @s Tags
execute unless entity @s[type=#matcha:amnestic_pets_no_tame] run data remove entity @s Tame