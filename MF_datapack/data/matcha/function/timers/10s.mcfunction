# These functions are run once every Second
schedule function matcha:timers/10s 10s replace

# Debug
# say Clock 10s

# Functions
function matcha:mechanics/beacon_kindling/10s_loop

# Troughs
execute as @e[type=marker,tag=trough] run function matcha:environmental/cow/trough/update_nearby_cows
# Check every troughed animal, and see if they should have peristence enabled
execute as @e[tag=has_trough] at @s run function matcha:environmental/persistent_pathing/check
# Kill any unused persistence markers
execute as @e[tag=persistence] at @s unless predicate matcha:mob_checks/has_vehicle run tp @s ~ ~-1000 ~

# Roosts
# Check every roosted animal (chicken), and see if they should have peristence enabled
execute as @e[tag=has_roost] at @s run function matcha:environmental/persistent_pathing/check