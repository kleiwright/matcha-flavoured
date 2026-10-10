data modify storage matcha_item:enchants held set from entity @s SelectedItem.components.minecraft:enchantments
# processing enchantment minecraft:protection / protection 
execute store result score enchants_lvl_protection item_updater run data get storage matcha_item:enchants held.'minecraft:protection'
execute unless score enchants_lvl_protection item_updater matches 2.. run data modify storage matcha_item:enchants held merge value {'minecraft:protection': 2}
item modify entity @s weapon.mainhand matcha_item:modify/quran
function matcha_item:enchants/mainhand with storage matcha_item:enchants