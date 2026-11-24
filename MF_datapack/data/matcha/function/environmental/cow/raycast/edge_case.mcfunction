# Need some testing to see if there any other cases
# These cases would happen if player is milking while inside of a cow
execute at @s anchored eyes positioned ^ ^ ^-0.01 run execute as @e[type=minecraft:cow,tag=!milking,dx=0,dy=0,dz=0,limit=1,sort=nearest] run tag @s add milking
execute at @s anchored eyes positioned ^0.01 ^ ^ run execute as @e[type=minecraft:cow,tag=!milking,dx=0,dy=0,dz=0,limit=1,sort=nearest] run tag @s add milking
execute at @s anchored eyes positioned ^-0.01 ^ ^ run execute as @e[type=minecraft:cow,tag=!milking,dx=0,dy=0,dz=0,limit=1,sort=nearest] run tag @s add milking
execute at @s anchored eyes positioned ^ ^0.01 ^ run execute as @e[type=minecraft:cow,tag=!milking,dx=0,dy=0,dz=0,limit=1,sort=nearest] run tag @s add milking
execute at @s anchored eyes positioned ^ ^-0.01 ^ run execute as @e[type=minecraft:cow,tag=!milking,dx=0,dy=0,dz=0,limit=1,sort=nearest] run tag @s add milking

execute if entity @e[tag=milking] run function matcha:environmental/cow/milk_cow_with_bucket

# Revoke the advancement if the edge case also fail and give player their bucket back
advancement revoke @s only matcha:mechanics/cow/milk_cow_with_bucket
give @s minecraft:bucket