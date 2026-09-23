say <D> Updating mainhand for electrum_spear
data modify storage matcha_item:enchants held set from entity @s SelectedItem.components.minecraft:enchantments
item modify entity @s weapon.mainhand matcha_item:modify/electrum_spear
# processing enchantment minecraft:smite / smite 
execute store result score enchants_lvl_smite item_updater run data get storage matcha_item:enchants held.'minecraft:smite'
execute unless score enchants_lvl_smite item_updater matches 4.. run data modify storage matcha_item:enchants held merge value {'minecraft:smite': 4}
# processing enchantment minecraft:looting / looting 
execute store result score enchants_lvl_looting item_updater run data get storage matcha_item:enchants held.'minecraft:looting'
execute unless score enchants_lvl_looting item_updater matches 2.. run data modify storage matcha_item:enchants held merge value {'minecraft:looting': 2}
# processing enchantment matcha:warding_2 / warding_2 
execute store result score enchants_lvl_warding_2 item_updater run data get storage matcha_item:enchants held.'matcha:warding_2'
execute unless score enchants_lvl_warding_2 item_updater matches 1.. run data modify storage matcha_item:enchants held merge value {'matcha:warding_2': 1}
function matcha_item:enchants/mainhand with storage matcha_item:enchants