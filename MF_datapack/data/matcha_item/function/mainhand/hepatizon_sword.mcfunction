say <D> Updating mainhand for hepatizon_sword
data modify storage matcha_item:enchants held set from entity @s SelectedItem.components.minecraft:enchantments
item modify entity @s weapon.mainhand matcha_item:modify/hepatizon_sword
# processing enchantment matcha:riposte / riposte 
execute store result score enchants_lvl_riposte item_updater run data get storage matcha_item:enchants held.'matcha:riposte'
execute unless score enchants_lvl_riposte item_updater matches 2.. run data modify storage matcha_item:enchants held merge value {'matcha:riposte': 2}
function matcha_item:enchants/mainhand with storage matcha_item:enchants