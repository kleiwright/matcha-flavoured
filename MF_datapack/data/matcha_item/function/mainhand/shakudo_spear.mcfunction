data modify storage matcha_item:enchants held set from entity @s SelectedItem.components.minecraft:enchantments
# processing enchantment matcha:shakudo_weapon / shakudo_weapon 
execute store result score enchants_lvl_shakudo_weapon item_updater run data get storage matcha_item:enchants held.'matcha:shakudo_weapon'
execute unless score enchants_lvl_shakudo_weapon item_updater matches 1.. run data modify storage matcha_item:enchants held merge value {'matcha:shakudo_weapon': 1}
item modify entity @s weapon.mainhand matcha_item:modify/shakudo_spear
function matcha_item:enchants/mainhand with storage matcha_item:enchants