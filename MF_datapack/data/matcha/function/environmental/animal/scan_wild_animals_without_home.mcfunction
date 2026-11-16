# This runs as a location adv if in the overworld. If you can think of a better way to trigger this, go ahead and change it!
# That way it won't trigger if the player is in another dimension

execute as @e[type=#matcha:animals_with_homes,tag=!has_home] as @s at @s run function matcha:environmental/animal/set_wild_animal_homes

# DEBUG: DO not scan whilst making roots, that way the home is never set
advancement revoke @s only matcha:mechanics/scan_wild_animals_without_home
