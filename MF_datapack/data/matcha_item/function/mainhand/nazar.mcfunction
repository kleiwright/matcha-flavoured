data modify storage matcha_item:enchants held set from entity @s SelectedItem.components.minecraft:enchantments
# processing enchantment matcha:warding_2 / warding_2 
execute store result score enchants_lvl_warding_2 item_updater run data get storage matcha_item:enchants held.'matcha:warding_2'
execute unless score enchants_lvl_warding_2 item_updater matches 1.. run data modify storage matcha_item:enchants held merge value {'matcha:warding_2': 1}
item modify entity @s weapon.mainhand matcha_item:modify/nazar
function matcha_item:enchants/mainhand with storage matcha_item:enchants