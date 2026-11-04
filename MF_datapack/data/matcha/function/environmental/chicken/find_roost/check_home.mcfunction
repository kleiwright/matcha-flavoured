# This runs as a location adv if in the overworld. If you can think of a better way to trigger this, go ahead and change it!
# That way it won't trigger if the player is in another dimension
#This funciton is used so chickens stay at their home, and won't wander off to the nearest grass block

#All chickens have increased tempt range, so do that here, rather than each individual function
execute as @e[type=chicken,tag=!has_home] run data merge entity @s {attributes:[{id:"minecraft:tempt_range",base:20}]}

#Check to see if any wild chickens have no home
execute as @e[type=chicken,tag=mama,tag=!has_home] run function matcha:environmental/chicken/find_roost/set_my_mama_home
execute as @e[type=chicken,tag=rascal,tag=!has_home] run function matcha:environmental/chicken/find_roost/set_my_rascal_home
execute as @e[type=chicken,tag=curious,tag=!has_home] run function matcha:environmental/chicken/find_roost/set_my_curious_home
execute as @e[type=chicken,tag=nest_maker,tag=!has_home] run function matcha:environmental/chicken/find_roost/set_my_nest_maker_home
execute as @e[type=chicken,tag=!has_home] run function matcha:environmental/chicken/find_roost/set_my_home

# DEBUG: DO not scan whilst making roots, that way the home is never set
# advancement revoke @s only matcha:mechanics/chicken/scan_wild_chickens_without_home