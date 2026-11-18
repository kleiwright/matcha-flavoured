# This function is run once every 10s by the Server

# If the campfire is broken, kill everything
execute as @e[type=marker,tag=beacon_kindling] at @s unless block ~ ~ ~ minecraft:campfire[lit=true] run function matcha:mechanics/beacon_kindling/kill_wandering_trader_early

# Check if the 10 min have passed (90 - 60), and the beacon has NOT already summoned a trader, if true, summon him
execute as @e[type=marker,tag=beacon_kindling,tag=!summoned_trader,scores={Lifetime=..30}] at @s run function matcha:mechanics/beacon_kindling/summon_wandering_trader


# Check if Beacon Kindling should be extinguished
execute as @e[type=marker,tag=beacon_kindling,scores={Lifetime=..0}] at @s run function matcha:mechanics/beacon_kindling/kill_beacon

# Check if Wandering Traders should leave
execute as @e[type=wandering_trader,tag=summoned_by_beacon,scores={Lifetime=..0}] at @s run function matcha:mechanics/beacon_kindling/kill_wandering_trader

# Check if Players should be allowed to place another Beacon Kindling
scoreboard players reset @a[scores={BeaconKindlingCooldown=..0}] BeaconKindlingCooldown


# Reduce durations by 1 (10s)
scoreboard players remove @e[type=marker,tag=beacon_kindling] Lifetime 1
scoreboard players remove @e[type=wandering_trader,tag=summoned_by_beacon,scores={Lifetime=1..}] Lifetime 1
scoreboard players remove @a[scores={BeaconKindlingCooldown=1..}] BeaconKindlingCooldown 1
