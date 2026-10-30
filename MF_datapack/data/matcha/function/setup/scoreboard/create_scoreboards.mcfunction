# This function runs when the Datapack is Loaded
# This function is used to set up Scoreboards and their Global Variables
# Players' initial scores are applied in "matcha:setup/scoreboard/player_setup"


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

# Setup "CrystalHeartCooldown" scoreboard
scoreboard objectives add CrystalHeartCooldown dummy


# players' sleepTimer data value, and several other variables
# related to sleeping stored in fake players
scoreboard objectives add sleepTimerScore dummy

# players' amount of gametime to sleep before waking up
scoreboard objectives add sleepDuration dummy


# Aura Effect
scoreboard objectives add AuraWindup dummy
scoreboard objectives add AuraDuration dummy


# Electrum and Warding
scoreboard objectives add WardingPower dummy
scoreboard objectives add electrum_armour dummy
scoreboard objectives add warding_equipment dummy

# Used to clamp the maximum level of Warding obtainable from equipment (to be lower than wearing a full set of Electrum Armor)
scoreboard players set $Max warding_equipment 3


# Adamant Armour
scoreboard objectives add adamant_armour dummy

# Shakudo
scoreboard objectives add shakudo_regen dummy
scoreboard objectives add ShakudoRegenCooldown dummy
scoreboard objectives add shakudo_wither_resistance dummy

# Divinity. Used for Adamant and Electrum Armour
scoreboard objectives add DivinityCooldown dummy

# Anemos enchantment
scoreboard objectives add AnemosCooldown dummy

# Traversal enchantment
scoreboard objectives add TraversalBuffer dummy

# Zephyr enchantment
scoreboard objectives add ZephyrCharge dummy

# Used mostly for particles
stopwatch create 3s
stopwatch create 2s
stopwatch create 1s
stopwatch create 0.5s

# Used for village sounds
stopwatch create eerie

scoreboard objectives add boating minecraft.custom:minecraft.boat_one_cm

# Used for Wither Effect (Heartbreaker)
scoreboard objectives add wither_timer dummy

# Used for Hunger Effect
scoreboard objectives add hunger_timer dummy

# Used for Beacon Kindling
scoreboard objectives add BeaconKindlingCooldown dummy

# Used for Non-Player Entities who only exist for a set duration
scoreboard objectives add Lifetime dummy

scoreboard objectives add version_number dummy
# EX. 104 is 1.04, it represents the current version, 1211 1.12.1
scoreboard players set current_version version_number 1130
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

# Used in main/function/mechanics/intrinsic_enchants/
scoreboard objectives add intrinsic_enchants_levels dummy

# Add Trigger Scoreboard to update your old items
scoreboard objectives add update_item trigger
scoreboard players set #1000 update_item 1000

# Used to detect when player joins the server
scoreboard objectives add leave_game minecraft.custom:minecraft.leave_game
