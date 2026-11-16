# This function (should) only run when a new baby has been bred, near other cows who already have a trough 

data merge entity @s {attributes:[{id:"minecraft:tempt_range",base:15}]}
# Cows tend to wander far from their home
data merge entity @s {home_radius:21}
# Sets Home position to the nearest trough
data modify entity @s home_pos set from entity @n[type=marker,tag=trough] Pos
# Now I have a home, don't run this function on me again
tag @s add has_home
