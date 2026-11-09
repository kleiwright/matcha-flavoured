# These functions are run once every 0.5 Seconds
schedule function matcha:timers/0.5s 0.5s replace

# Debug
#// say Clock 0.5s

# Functions
execute as @e[type=!minecraft:ender_pearl, tag=chunkloader] at @s run function matcha:mechanics/gudi/update_chunkloader with entity @s
execute as @e[type=minecraft:ender_pearl, tag=chunkloader] run function matcha:mechanics/gudi/update_chunkloader_pearl with entity @s


# Spawn particles
execute at @e[type=minecraft:armor_stand, tag=WardingStoneSetup] run particle minecraft:soul_fire_flame ~ ~0.5 ~ .5 .5 .5 0 2
execute at @e[type=item,tag=particle_blaze_powder] run particle minecraft:smoke ~ ~.75 ~ .05 .05 .05 0 1 normal