# This function is run every tick by players with Zephyr III who are SNEAKING

# Add charge
scoreboard players add @s ZephyrCharge 1

# Indicate when the ability is Charged
execute if score @s ZephyrCharge matches 45 run particle minecraft:dust_plume ~ ~ ~ .5 .1 .5 .1 50
execute if score @s ZephyrCharge matches 45 run playsound matcha:entity.experience_orb.pickup player @s ~ ~ ~ 0.75
