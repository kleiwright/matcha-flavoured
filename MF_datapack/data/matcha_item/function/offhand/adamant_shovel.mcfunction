say <D> Updating offhand for adamant_shovel
data modify storage matcha_item:enchants held set from entity @s equipment.offhand.components.minecraft:enchantments
item modify entity @s weapon.offhand matcha_item:modify/adamant_shovel
# processing enchantment matcha:adamant_tool / adamant_tool 
execute store result score enchants_lvl_adamant_tool item_updater run data get storage matcha_item:enchants held.'matcha:adamant_tool'
execute unless score enchants_lvl_adamant_tool item_updater matches 1.. run data modify storage matcha_item:enchants held merge value {'matcha:adamant_tool': 1}
# processing enchantment minecraft:efficiency / efficiency 
execute store result score enchants_lvl_efficiency item_updater run data get storage matcha_item:enchants held.'minecraft:efficiency'
execute unless score enchants_lvl_efficiency item_updater matches 2.. run data modify storage matcha_item:enchants held merge value {'minecraft:efficiency': 2}
# processing enchantment minecraft:unbreaking / unbreaking 
execute store result score enchants_lvl_unbreaking item_updater run data get storage matcha_item:enchants held.'minecraft:unbreaking'
execute unless score enchants_lvl_unbreaking item_updater matches 2.. run data modify storage matcha_item:enchants held merge value {'minecraft:unbreaking': 2}
function matcha_item:enchants/offhand with storage matcha_item:enchants