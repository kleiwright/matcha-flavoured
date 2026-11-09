#Before we check the power level, we check the blocks around every copper eye, if the supporting blocks aren't there, including the target, we kill them
# function matcha:abbey/check_if_copper_eye_should_be_killed
#Then we go through and actually check power levels






say checkHit



# Check Every Copper Eye, if it is broken, kill it
execute as @e[type=minecraft:marker,distance=..25,tag=grate] at @s if block ~ ~ ~ minecraft:air run function matcha:structure/abbey/copper_grate/kill

# Check Every Copper Eye's Power Level, if it is >= 1, check its integrity
execute as @e[type=minecraft:marker,distance=..25,tag=grate.vertical_NS] at @s unless block ~ ~ ~ target[power=0] run function matcha:structure/abbey/copper_grate/grate_vertical_ns/determine_extension


advancement revoke @a only matcha:mechanics/hit_copper_eye_1