data modify storage matcha_item:enchants held set from entity @s SelectedItem.components.minecraft:enchantments
# processing enchantment minecraft:sharpness / sharpness 
execute store result score enchants_lvl_sharpness item_updater run data get storage matcha_item:enchants held.'minecraft:sharpness'
execute unless score enchants_lvl_sharpness item_updater matches 3.. run data modify storage matcha_item:enchants held merge value {'minecraft:sharpness': 3}
item modify entity @s weapon.mainhand matcha_item:modify/enoch
function matcha_item:enchants/mainhand with storage matcha_item:enchants