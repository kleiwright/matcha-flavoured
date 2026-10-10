data modify storage matcha_item:enchants held set from entity @s SelectedItem.components.minecraft:enchantments
# processing enchantment minecraft:lunge / lunge 
execute store result score enchants_lvl_lunge item_updater run data get storage matcha_item:enchants held.'minecraft:lunge'
execute unless score enchants_lvl_lunge item_updater matches 3.. run data modify storage matcha_item:enchants held merge value {'minecraft:lunge': 3}
item modify entity @s weapon.mainhand matcha_item:modify/hepatizon_spear
function matcha_item:enchants/mainhand with storage matcha_item:enchants