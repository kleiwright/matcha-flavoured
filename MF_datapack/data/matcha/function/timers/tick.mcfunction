# Run functions

function matcha:environmental/check_freezing_water_conditions
function matcha:environmental/nether_water
function matcha:environmental/village_eerie_sound

function matcha:mechanics/anvil_xp/remove_xp
function matcha:mechanics/heart_container/detect_death
function matcha:mechanics/manage_hunger
function matcha:mechanics/sleeping/tick
function matcha:mechanics/spawn_mechanic/ticking
execute as @e[type=minecraft:armor_stand,tag=WardingStone] at @s run function matcha:mechanics/warding_stone/tick

function matcha:particle/beacon_kindling
function matcha:particle/item_particles
function matcha:particle/riding_boat

function matcha:stopwatches

function matcha:update_old_items/check_trigger

# Reduce cooldowns by one tick
execute as @a if score @s AnemosCooldown matches 1.. run scoreboard players remove @s AnemosCooldown 1
execute as @a if score @s CrystalHeartCooldown matches 1.. run scoreboard players remove @s CrystalHeartCooldown 1
execute as @a if score @s AuraWindup matches 0.. run scoreboard players remove @s AuraWindup 1
