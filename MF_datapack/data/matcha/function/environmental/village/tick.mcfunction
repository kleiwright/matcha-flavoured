# This function is ran every tick by Players that are in Villages

# Activate the Entity
execute as @n[type=minecraft:mannequin,tag=haunted] at @s run function matcha:environmental/village/entity

# Activate the Jukebox
execute as @n[type=marker,tag=jukebox] at @s run function matcha:environmental/village/jukebox

# Kills any playing music
stopsound @s music

# Only inspect the ground around the two sound windows. The sound functions
# still test their exact playback times.
execute if stopwatch eerie 0.9..1.9 run function matcha:environmental/village/eerie_sound
execute if stopwatch eerie 99.9..100.1 run function matcha:environmental/village/eerie_sound
