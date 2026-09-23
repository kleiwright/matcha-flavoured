say <D> Updating mainhand for electrum_hoe
data modify storage matcha_item:enchants held set from entity @s SelectedItem.components.minecraft:enchantments
item modify entity @s weapon.mainhand matcha_item:modify/electrum_hoe
# processing enchantment matcha:electrum_tool / electrum_tool 
execute store result score enchants_lvl_electrum_tool item_updater run data get storage matcha_item:enchants held.'matcha:electrum_tool'
execute unless score enchants_lvl_electrum_tool item_updater matches 3.. run data modify storage matcha_item:enchants held merge value {'matcha:electrum_tool': 3}
function matcha_item:enchants/mainhand with storage matcha_item:enchants