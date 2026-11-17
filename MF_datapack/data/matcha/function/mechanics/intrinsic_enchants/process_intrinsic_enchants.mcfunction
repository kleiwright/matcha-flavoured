advancement revoke @s only matcha:mechanics/intrinsic_enchants_obtained

data modify storage minecraft:intrinsic_enchants item set from entity @s Inventory[{components: {"minecraft:custom_data": {"has_intrinsic_enchants": 1b}}}]

data modify storage minecraft:intrinsic_enchants slot set from storage minecraft:intrinsic_enchants item.Slot
data modify storage minecraft:intrinsic_enchants enchantments set value {}
data modify storage minecraft:intrinsic_enchants enchantments merge from storage minecraft:intrinsic_enchants item.components.minecraft:enchantments

function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:adamant_armour"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:adamant_tool"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:anemos"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:adamant_weapon"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:bloodrage"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:cleanse_armor_chest"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:cleanse_armor_feet"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:cleanse_armor_head"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:cleanse_armor_legs"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:cleanse_armor_maleffect"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:conduit_power"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:divinity"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:fire_proof"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:freezing_protection"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:haste"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:magic_protection"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:max_magic_protection"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:reach"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:regeneration"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:riposte"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:shakudo_weapon"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:shakudo_armour"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:slaughter"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:traversal"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:warding_1"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:warding_2"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:warding_3"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:warding_4"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:electrum_armour"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:electrum_tool"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "matcha:zephyr"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:aqua_affinity"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:bane_of_arthropods"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:binding_curse"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:blast_protection"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:breach"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:channeling"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:density"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:depth_strider"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:efficiency"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:feather_falling"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:fire_aspect"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:fire_protection"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:flame"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:fortune"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:frost_walker"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:impaling"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:infinity"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:knockback"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:looting"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:loyalty"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:luck_of_the_sea"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:lunge"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:lure"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:mending"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:multishot"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:piercing"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:power"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:projectile_protection"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:protection"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:punch"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:quick_charge"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:respiration"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:riptide"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:sharpness"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:silk_touch"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:smite"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:soul_speed"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:sweeping_edge"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:swift_sneak"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:thorns"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:unbreaking"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:vanishing_curse"}
function matcha:mechanics/intrinsic_enchants/select_higher_level {"enchantment_id": "minecraft:wind_burst"}

#Remove Mutx enchants
execute if data storage minecraft:intrinsic_enchants item.components.minecraft:stored_enchantments.matcha:electrum_tool run data remove storage minecraft:intrinsic_enchants enchantments.minecraft:silk_touch
execute if data storage minecraft:intrinsic_enchants item.components.minecraft:stored_enchantments.minecraft:smite run data remove storage minecraft:intrinsic_enchants enchantments.minecraft:sharpness
execute if data storage minecraft:intrinsic_enchants item.components.minecraft:stored_enchantments.minecraft:silk_touch run data remove storage minecraft:intrinsic_enchants enchantments.minecraft:fortune
execute if data storage minecraft:intrinsic_enchants item.components.minecraft:stored_enchantments.matcha:electrum_tool run data remove storage minecraft:intrinsic_enchants enchantments.minecraft:fortune
execute if data storage minecraft:intrinsic_enchants item.components.minecraft:stored_enchantments.matcha:adamant_weapon run data remove storage minecraft:intrinsic_enchants enchantments.matcha:warding_1
execute if data storage minecraft:intrinsic_enchants item.components.minecraft:stored_enchantments.matcha:adamant_weapon run data remove storage minecraft:intrinsic_enchants enchantments.matcha:warding_2
execute if data storage minecraft:intrinsic_enchants item.components.minecraft:stored_enchantments.matcha:adamant_weapon run data remove storage minecraft:intrinsic_enchants enchantments.matcha:warding_3
execute if data storage minecraft:intrinsic_enchants item.components.minecraft:stored_enchantments.matcha:adamant_weapon run data remove storage minecraft:intrinsic_enchants enchantments.matcha:warding_4

scoreboard players reset current intrinsic_enchants_levels
scoreboard players reset intrinsic intrinsic_enchants_levels
data remove storage minecraft:intrinsic_enchants item

function matcha:mechanics/intrinsic_enchants/apply_intrinsic_enchants with storage minecraft:intrinsic_enchants
