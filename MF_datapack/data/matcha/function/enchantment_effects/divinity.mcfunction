# This function is run every tick for all players with an adamant_armour or electrum_armour score of 4

# Check if Cooldown should be reset WITHOUT giving Absorption (e.g. when initially equipped), stop function here if so.
execute unless score @s DivinityCooldown matches 0.. run return run scoreboard players set @s DivinityCooldown 600

# Stop before applying Absorption if the ability is on cooldown
execute unless score @s DivinityCooldown matches 0 run return fail

# Apply Absorption Effect
effect give @s minecraft:absorption 31 0 true

# Put the ability on Cooldown
scoreboard players set @s DivinityCooldown 600
