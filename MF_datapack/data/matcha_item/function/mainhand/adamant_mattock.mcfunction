say <D> Updating mainhand for adamant_mattock
data modify storage matcha_item:enchants held set from entity @s SelectedItem.components.minecraft:enchantments
item modify entity @s weapon.mainhand matcha_item:modify/adamant_mattock
# processing enchantment minecraft:efficiency / efficiency 
execute store result score enchants_lvl_efficiency item_updater run data get storage matcha_item:enchants held.'minecraft:efficiency'
execute unless score enchants_lvl_efficiency item_updater matches 1.. run data modify storage matcha_item:enchants held merge value {'minecraft:efficiency': 1}
# processing enchantment matcha:adamant_tool / adamant_tool 
execute store result score enchants_lvl_adamant_tool item_updater run data get storage matcha_item:enchants held.'matcha:adamant_tool'
execute unless score enchants_lvl_adamant_tool item_updater matches 1.. run data modify storage matcha_item:enchants held merge value {'matcha:adamant_tool': 1}
# processing enchantment minecraft:unbreaking / unbreaking 
execute store result score enchants_lvl_unbreaking item_updater run data get storage matcha_item:enchants held.'minecraft:unbreaking'
execute unless score enchants_lvl_unbreaking item_updater matches 2.. run data modify storage matcha_item:enchants held merge value {'minecraft:unbreaking': 2}
function matcha_item:enchants/mainhand with storage matcha_item:enchants