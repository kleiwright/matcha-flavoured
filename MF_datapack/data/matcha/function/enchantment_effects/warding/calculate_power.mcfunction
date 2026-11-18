# Check which source of Warding is stronger (Equipment or Electrum Armor):
# We use the WardingPower scoreboard to store our final value so we can do operations to it

# Start by storing the total WardingPower to the value of warding equipment
scoreboard players operation @s WardingPower = @s warding_equipment

# Clamp the Warding Power obtained from equipment to the maximum amount you are allowed to benefit from, if larger
scoreboard players operation @s WardingPower < $Max warding_equipment

# Set the total WardingPower to the larger of the two: Itself or electrum_armor
scoreboard players operation @s WardingPower > @s electrum_armour
