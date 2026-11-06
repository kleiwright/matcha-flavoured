#This funciton is used so chickens stay at their home, and won't wander off to the nearest grass block

#All chickens have increased tempt range, so do that here, rather than each individual function
data merge entity @s[tag=!has_home] {attributes:[{id:"minecraft:tempt_range",base:20}]}


# If they already have a home, and it needs to be updated (by player feeding)
# Mamas DO NOT update their home, NOR nest makers
execute as @s[tag=has_home,tag=!mama,tag=!nest_maker] run function matcha:environmental/chicken/find_roost/set_my_home

#Check to see if any wild chickens have no home
execute as @s[tag=mama,tag=!has_home] run function matcha:environmental/chicken/find_roost/set_my_mama_home
execute as @s[tag=rascal,tag=!has_home] run function matcha:environmental/chicken/find_roost/set_my_rascal_home
execute as @s[tag=curious,tag=!has_home] run function matcha:environmental/chicken/find_roost/set_my_curious_home
execute as @s[tag=nest_maker,tag=!has_home] run function matcha:environmental/chicken/find_roost/set_my_nest_maker_home
# Fallback
execute as @s[tag=!has_home] run function matcha:environmental/chicken/find_roost/set_my_home
