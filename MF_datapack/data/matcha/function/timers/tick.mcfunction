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

# function matcha:update_old_items/check_trigger

execute as @a if score @s undo_heartbreaker matches 1.. run function matcha:mechanics/heart_container/check_trigger

#enchantment updates
function matcha:workarounds/run_item_modify_str

# Reduce cooldowns by one tick
execute as @a if score @s AnemosCooldown matches 1.. run scoreboard players remove @s AnemosCooldown 1
execute as @a if score @s CrystalHeartCooldown matches 1.. run scoreboard players remove @s CrystalHeartCooldown 1
execute as @a if score @s AuraWindup matches 0.. run scoreboard players remove @s AuraWindup 1
execute as @a if score @s ShakudoRegenCooldown matches 0.. run scoreboard players remove @s ShakudoRegenCooldown 1
execute as @a if score @s DivinityCooldown matches 0.. run scoreboard players remove @s DivinityCooldown 1
execute as @a if score @s TraversalBuffer matches 1.. run scoreboard players remove @s TraversalBuffer 1

# Reset counts
# * empties the entire scoreboard
scoreboard players reset * shakudo_regen
scoreboard players reset @a warding_equipment
scoreboard players reset * electrum_armour
scoreboard players reset * adamant_armour
