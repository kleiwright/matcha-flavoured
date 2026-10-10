data modify storage matcha_item:enchants held set from entity @s SelectedItem.components.minecraft:enchantments
# processing enchantment minecraft:fortune / fortune 
execute store result score enchants_lvl_fortune item_updater run data get storage matcha_item:enchants held.'minecraft:fortune'
execute unless score enchants_lvl_fortune item_updater matches 1.. run data modify storage matcha_item:enchants held merge value {'minecraft:fortune': 1}
item modify entity @s weapon.mainhand matcha_item:modify/golden_hoe
function matcha_item:enchants/mainhand with storage matcha_item:enchants