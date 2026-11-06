data merge entity @s {attributes:[{id:"minecraft:tempt_range",base:20}]}
# Cows tend to wander far from their home
data merge entity @s {home_radius:21}
# Sets Home position to current position
data modify entity @s home_pos set from entity @s Pos
# Now I have a home, don't run this function on me again
tag @s add has_home
