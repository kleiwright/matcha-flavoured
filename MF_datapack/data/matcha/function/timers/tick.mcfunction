# Run functions

execute as @a[scores={adamant_armour=4}] run function matcha:enchantment_effects/divinity
execute as @a[scores={electrum_armour=4}] run function matcha:enchantment_effects/divinity
execute as @a[scores={shakudo_regen=1..}] run function matcha:enchantment_effects/shakudo_effects/regeneration/apply

function matcha:environmental/freezing_water/check_conditions
execute as @a[predicate=matcha:in_village] at @s run function matcha:environmental/village/tick

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
scoreboard players remove @a[scores={AnemosCooldown=1..}] AnemosCooldown 1
scoreboard players remove @a[scores={CrystalHeartCooldown=1..}] CrystalHeartCooldown 1
scoreboard players remove @a[scores={AuraWindup=0..}] AuraWindup 1
scoreboard players remove @a[scores={ShakudoRegenCooldown=0..}] ShakudoRegenCooldown 1
scoreboard players remove @a[scores={DivinityCooldown=0..}] DivinityCooldown 1
scoreboard players remove @a[scores={TraversalBuffer=1..}] TraversalBuffer 1

# Reset counts
# * empties the entire scoreboard
scoreboard players reset * shakudo_regen
scoreboard players reset @a warding_equipment
scoreboard players reset * electrum_armour
scoreboard players reset * adamant_armour
