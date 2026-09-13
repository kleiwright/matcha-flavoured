# This was done to support multiplayer called by matcha:setup/load
# When people join, a world is not reloaded, and they are never added to important scoreboards
# So I run this function every Second to see if there are any players who have joined, who have not been updated
# Because after you join a server, the world will not reload to add you
# This checks if their version number
# And if they haven't, we clear all recipe unlocks (So they can get updated recipes) and then set their version number to be the current one, so it doesn't run again


# If the player's version number is less than the current version, run the amnesia function (remove all recipe unlock advancements)
execute as @a unless score @s version_number >= current_version version_number run function matcha:setup/update_this_player

# Run this checker again in one second's time
schedule function matcha:setup/player_update_check_loop 1s replace