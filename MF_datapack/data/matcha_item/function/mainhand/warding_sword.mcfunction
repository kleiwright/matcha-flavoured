say <D> Updating mainhand for warding_sword
data modify storage matcha_item:enchants held set from entity @s SelectedItem.components.minecraft:enchantments
item modify entity @s weapon.mainhand matcha_item:modify/warding_sword
# processing enchantment matcha:warding_1 / warding_1 
execute store result score enchants_lvl_warding_1 item_updater run data get storage matcha_item:enchants held.'matcha:warding_1'
execute unless score enchants_lvl_warding_1 item_updater matches 1.. run data modify storage matcha_item:enchants held merge value {'matcha:warding_1': 1}
function matcha_item:enchants/mainhand with storage matcha_item:enchants