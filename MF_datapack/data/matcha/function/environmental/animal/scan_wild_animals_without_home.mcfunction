# This runs as a location adv if in the overworld. If you can think of a better way to trigger this, go ahead and change it!
# That way it won't trigger if the player is in another dimension

# Set Chicken homes
execute as @e[type=chicken,tag=!has_home] run function matcha:environmental/chicken/find_roost/check_home

# Set Pig homes
execute as @e[type=pig,tag=!has_home] run function matcha:environmental/pig/set_home

# Set Cow homes
execute as @e[type=cow,tag=!has_home] run function matcha:environmental/cow/set_home

# Set Sheep homes
execute as @e[type=sheep,tag=!has_home] run function matcha:environmental/sheep/set_home


# DEBUG: DO not scan whilst making roots, that way the home is never set
advancement revoke @s only matcha:mechanics/scan_wild_animals_without_home
