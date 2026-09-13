# This function runs when the Datapack is Loaded
# This function is used to set up Scoreboards and their Global Variables
# Players' initial scores are applied in "matcha:setup/scoreboard/player_setup"

scoreboard objectives add sneaking minecraft.custom:minecraft.sneak_time
scoreboard players set 0 sneaking 0
scoreboard players set 5 sneaking 5
scoreboard players set 10 sneaking 10
scoreboard players set 15 sneaking 15
scoreboard players set 20 sneaking 20
scoreboard players set 25 sneaking 25
scoreboard players set 30 sneaking 30
scoreboard players set 35 sneaking 35
scoreboard players set 40 sneaking 40
scoreboard players set 45 sneaking 45

scoreboard objectives add Hunger food
scoreboard objectives add HealthPoints health
scoreboard objectives add deaths deathCount


# Setup "Hearts" scoreboard
scoreboard objectives add Hearts dummy

# Global variables for "Hearts"
# Because actual players will exist on this scoreboard, we add Special Characters to the variable names
scoreboard players set $Max Hearts 60


# Setup "minimum_hearts" scoreboard
scoreboard objectives add minimum_hearts dummy

# Global variables for "minimum_hearts"
# Because actual players will exist on this scoreboard, we add Special Characters to the variable names
scoreboard players set $Easy minimum_hearts 20
scoreboard players set $Normal minimum_hearts 12
scoreboard players set $Hard minimum_hearts 6


# players' sleepTimer data value, and several other variables
# related to sleeping stored in fake players
scoreboard objectives add sleepTimerScore dummy

# players' amount of gametime to sleep before waking up
scoreboard objectives add sleepDuration dummy

scoreboard objectives add divinity dummy
scoreboard players set 0 divinity 0

# Electrum and Warding
scoreboard objectives add electrum_armour dummy
scoreboard players set 0 electrum_armour 0
scoreboard objectives add warding_equipment dummy
scoreboard players set 0 warding_equipment 0

# Adamant Armour
scoreboard objectives add adamant_armour dummy
scoreboard players set 0 adamant_armour 0

# Shakudo TO BE CHANGED
scoreboard objectives add shakudo_regen dummy
scoreboard players set 0 shakudo_regen 0

#Used for Adamant and Electrum Armour
stopwatch create divinity

#Used for Shakudo Armour
stopwatch create shakudo_regen_1
stopwatch create shakudo_regen_2
stopwatch create shakudo_regen_3
stopwatch create shakudo_regen_4
stopwatch create shakudo_regen_5
stopwatch create shakudo_regen_6
stopwatch create shakudo_regen_7
stopwatch create shakudo_regen_8

#Used mostly for particles
stopwatch create 3s
stopwatch create 2s
stopwatch create 1s
stopwatch create 0.5s

#Used to clear xp after a certain time after interacting with an anvil (cannot use schedule, as only the server can run schedule right now)
stopwatch create xp_timer

#Used for village sounds
stopwatch create eerie
scoreboard objectives add eerie dummy
scoreboard players set 1 eerie 1

scoreboard objectives add boating minecraft.custom:minecraft.boat_one_cm

scoreboard objectives add eat_cake_slice minecraft.custom:minecraft.eat_cake_slice
scoreboard players set 1 eat_cake_slice 1

scoreboard objectives add anvil_interaction minecraft.custom:minecraft.interact_with_anvil
scoreboard players set 0 anvil_interaction 0

scoreboard objectives add water_bucket_used minecraft.used:minecraft.water_bucket
scoreboard players set 1 water_bucket_used 1

# On load, set the wandering trader timer, and reset ALL people who summoned him, because if we don't, functions that should be looping wont be
# and it'll never ever fix itself. So if the server crashes, or someone logs out whilst waiting, they will never have a wandering trader arrive :c
# We will also kill any existing wandering traders, on load. Because again, that'll mess things up
function matcha:mechanic/wandering_trader/kill_wandering_trader_early
scoreboard objectives add wandering_trader_timer_score dummy
scoreboard players reset @a wandering_trader_timer_score
tag @a remove SummonedTrader
scoreboard players set 10min wandering_trader_timer_score 60
scoreboard players set 15min wandering_trader_timer_score 90
scoreboard players set 0 wandering_trader_timer_score 0

scoreboard objectives add version_number dummy
#EX. 104 is 1.04, it represents the current version, 1211 1.12.1
scoreboard players set current_version version_number 1121
scoreboard players set zero version_number 0

scoreboard objectives add gamerule_safe_surface dummy

scoreboard objectives add motion_x1 dummy
scoreboard objectives add motion_x2 dummy
scoreboard objectives add motion_y1 dummy
scoreboard objectives add motion_y2 dummy
scoreboard objectives add motion_z1 dummy
scoreboard objectives add motion_z2 dummy

scoreboard objectives add difficulty_score dummy
scoreboard players set easy difficulty_score 1
scoreboard players set normal difficulty_score 2
scoreboard players set hard difficulty_score 3
execute store result score current_world_settings_difficulty difficulty_score run difficulty

#Used in main/function/mechanic/intrinsic_enchants/
scoreboard objectives add intrinsic_enchants_levels dummy
