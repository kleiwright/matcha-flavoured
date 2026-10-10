data modify storage matcha_item:enchants held set from entity @s equipment.offhand.components.minecraft:enchantments
# processing enchantment matcha:bloodrage / bloodrage 
execute store result score enchants_lvl_bloodrage item_updater run data get storage matcha_item:enchants held.'matcha:bloodrage'
execute unless score enchants_lvl_bloodrage item_updater matches 1.. run data modify storage matcha_item:enchants held merge value {'matcha:bloodrage': 1}
item modify entity @s weapon.offhand matcha_item:modify/hatchet
function matcha_item:enchants/offhand with storage matcha_item:enchants