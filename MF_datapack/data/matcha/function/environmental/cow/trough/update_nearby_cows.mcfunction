#Every 10 seconds, (called in timers) the trough scans nearby cows, if they have been fed, it asks them to leave to go graze
execute at @s as @e[type=cow,distance=..8,tag=fed,tag=!leaving] run data merge entity @s {home_radius:25}
execute at @s as @e[type=cow,distance=..8,tag=fed,tag=!leaving] run tag @s add leaving
execute at @s as @e[type=cow,distance=..8,tag=fed,tag=!leaving] run say leaving
execute at @s as @e[type=cow,distance=..8,tag=fed,tag=leaving] run tag @s remove returning
#       "returning" and "leaving" are used so that the home_radius is not continuously modified every second

# If the cows are nearby, and have not been fed, make them hungry
execute at @s as @e[type=cow,distance=..8,tag=!fed,tag=!hungry] run tag @s add hungry
#      The Hungry tag will make cows constantly look around food food (envrionemental/cow/cow_eat.mcfcuntion), they constantly make block checks to see if they can eat


#Debug
# execute at @s run effect give @n[type=cow,distance=..8,tag=fed] minecraft:glowing 2 0 true