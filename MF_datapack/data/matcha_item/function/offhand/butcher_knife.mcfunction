data modify storage matcha_item:enchants held set from entity @s equipment.offhand.components.minecraft:enchantments
# processing enchantment matcha:slaughter / slaughter 
execute store result score enchants_lvl_slaughter item_updater run data get storage matcha_item:enchants held.'matcha:slaughter'
execute unless score enchants_lvl_slaughter item_updater matches 1.. run data modify storage matcha_item:enchants held merge value {'matcha:slaughter': 1}
# processing enchantment minecraft:looting / looting 
execute store result score enchants_lvl_looting item_updater run data get storage matcha_item:enchants held.'minecraft:looting'
execute unless score enchants_lvl_looting item_updater matches 2.. run data modify storage matcha_item:enchants held merge value {'minecraft:looting': 2}
item modify entity @s weapon.offhand matcha_item:modify/butcher_knife
function matcha_item:enchants/offhand with storage matcha_item:enchants