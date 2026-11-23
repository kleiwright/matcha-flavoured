playsound block.moss.place block @s ^ ^ ^1 1

execute as @n[type=marker,tag=roost,tag=!placed] at @s run function matcha:environmental/chicken/roost/place

advancement revoke @s only matcha:mechanics/troughs/place_chicken_roost