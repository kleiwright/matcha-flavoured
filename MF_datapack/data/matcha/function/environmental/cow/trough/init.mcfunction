playsound block.stone.place block @s ^ ^ ^1 1

execute as @n[type=marker,tag=trough,tag=!placed] at @s run function matcha:environmental/cow/trough/place

advancement revoke @s only matcha:mechanics/troughs/place_cow_trough



# If you place a trough, inside of a trough
# The markers will stack, so two markers will be inside of one trough, and it will take away your cauldron
# You can get the hay back if you mine it though
# Its a very weird and not-oft encounted edge case, but if you know of a way to quickly use target selectors to test if another entity of the same type
# is within a distance, let me know|| as in, I didn't want to amke a new scoreboard \/\/
# execute if entity @e[type=marker,distance=..1] store result score @s overcowded etc etc