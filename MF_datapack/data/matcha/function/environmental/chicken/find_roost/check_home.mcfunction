# This runs as a location adv if in the overworld. If you can think of a better way to trigger this, go ahead and change it!
#This funciton is used so chickens stay at their home, and won't wander off to the nearest grass block

#Check to see if any wild chickens have no home
execute as @e[type=chicken,tag=mama,tag=!has_home] run function matcha:environmental/chicken/find_roost/set_my_mama_home
execute as @e[type=chicken,tag=!has_home] run function matcha:environmental/chicken/find_roost/set_my_home
advancement revoke @s only matcha:mechanics/chicken/scan_wild_chickens_without_home