#Before we check the power level, we check the blocks around every copper eye, if the supporting blocks aren't there, including the target, we kill them
# function matcha:abbey/check_if_copper_eye_should_be_killed
#Then we go through and actually check power levels






say checkHit



# Check Every Copper Eye, if it is broken, kill it
execute as @e[type=minecraft:marker,distance=..25,tag=grate] at @s if block ~ ~ ~ minecraft:air run function matcha:structure/abbey/copper_grate/kill

# Check Every Copper Eye's Power Level, if it is >= 1, check its integrity
execute as @e[type=minecraft:marker,distance=..25,tag=grate.vertical_ns] at @s unless block ~ ~ ~ target[power=0] run function matcha:structure/abbey/copper_grate/grate_vertical_ns/determine_extension
execute as @e[type=minecraft:marker,distance=..25,tag=grate.flat_ns] at @s unless block ~ ~ ~ target[power=0] run function matcha:structure/abbey/copper_grate/grate_flat_ns/determine_extension
execute as @e[type=minecraft:marker,distance=..25,tag=grate.flat_sn] at @s unless block ~ ~ ~ target[power=0] run function matcha:structure/abbey/copper_grate/grate_flat_sn/determine_extension
execute as @e[type=minecraft:marker,distance=..25,tag=grate.flat_ew] at @s unless block ~ ~ ~ target[power=0] run function matcha:structure/abbey/copper_grate/grate_flat_ew/determine_extension
execute as @e[type=minecraft:marker,distance=..25,tag=grate.flat_we] at @s unless block ~ ~ ~ target[power=0] run function matcha:structure/abbey/copper_grate/grate_flat_we/determine_extension

execute as @e[type=minecraft:marker,distance=..25,tag=grate.side_sn] at @s unless block ~ ~ ~ target[power=0] run function matcha:structure/abbey/copper_grate/grate_side_sn/determine_extension
execute as @e[type=minecraft:marker,distance=..25,tag=grate.side_ns] at @s unless block ~ ~ ~ target[power=0] run function matcha:structure/abbey/copper_grate/grate_side_ns/determine_extension
execute as @e[type=minecraft:marker,distance=..25,tag=grate.side_ew] at @s unless block ~ ~ ~ target[power=0] run function matcha:structure/abbey/copper_grate/grate_side_ew/determine_extension
execute as @e[type=minecraft:marker,distance=..25,tag=grate.side_we] at @s unless block ~ ~ ~ target[power=0] run function matcha:structure/abbey/copper_grate/grate_side_we/determine_extension

# execute as @e[type=minecraft:marker,distance=..25,tag=grate.side_ns]
# execute as @e[type=minecraft:marker,distance=..25,tag=grate.side_sn]
# execute as @e[type=minecraft:marker,distance=..25,tag=grate.side_ew]
# execute as @e[type=minecraft:marker,distance=..25,tag=grate.side_we]

# execute as @e[type=minecraft:marker,distance=..25,tag=grate.down_we]

advancement revoke @a only matcha:mechanics/hit_copper_eye_1