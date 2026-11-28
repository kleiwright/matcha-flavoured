playsound block.stone.place block @s ^ ^ ^1 1

execute as @n[type=marker,tag=pig_trough,tag=!placed] at @s run function matcha:environmental/pig/trough/place

advancement revoke @s only matcha:mechanics/troughs/place_pig_trough