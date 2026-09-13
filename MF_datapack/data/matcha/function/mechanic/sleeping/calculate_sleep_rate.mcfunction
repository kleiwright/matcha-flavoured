# note: everything in here has been multiplied by 3 as per #83

# count number of players in overworld
execute store result score players_in_overworld sleepTimerScore \
    if entity @a[predicate=matcha:in_overworld]


# count number of players sleeping
execute store result score players_sleeping sleepTimerScore \
    if entity @a[tag=is_sleeping]


# calculate sleep rate (amount of time to skip per tick)
#
# formula:
#  sleep_rate = (players_sleeping/players_in_overworld)^2 * 300
#
scoreboard players set sleep_rate sleepTimerScore 300
scoreboard players operation sleep_rate sleepTimerScore *= players_sleeping sleepTimerScore
scoreboard players operation sleep_rate sleepTimerScore *= players_sleeping sleepTimerScore
scoreboard players operation sleep_rate sleepTimerScore /= players_in_overworld sleepTimerScore
scoreboard players operation sleep_rate sleepTimerScore /= players_in_overworld sleepTimerScore


# store sleep_rate in nbt storage (needed to pass to macro function later)
execute store result storage sleep_rate_temp time int 1.0 \
    run scoreboard players get sleep_rate sleepTimerScore
