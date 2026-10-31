# These functions are run once every 0.5 Seconds
schedule function matcha:timers/0.5s 0.5s replace

# Debug
#// say Clock 0.5s

# Functions
execute as @e[type=!minecraft:ender_pearl, tag=chunkloader] at @s run function matcha:mechanics/pet_whistle/update_chunkloader with entity @s
execute as @e[type=minecraft:ender_pearl, tag=chunkloader] run function matcha:mechanics/pet_whistle/update_chunkloader_pearl with entity @s