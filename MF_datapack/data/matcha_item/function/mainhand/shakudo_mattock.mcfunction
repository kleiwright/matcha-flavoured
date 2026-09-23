say <D> Updating mainhand for shakudo_mattock
data modify storage matcha_item:enchants held set from entity @s SelectedItem.components.minecraft:enchantments
item modify entity @s weapon.mainhand matcha_item:modify/shakudo_mattock
# processing enchantment minecraft:silk_touch / silk_touch 
execute store result score enchants_lvl_silk_touch item_updater run data get storage matcha_item:enchants held.'minecraft:silk_touch'
execute unless score enchants_lvl_silk_touch item_updater matches 1.. run data modify storage matcha_item:enchants held merge value {'minecraft:silk_touch': 1}
function matcha_item:enchants/mainhand with storage matcha_item:enchants