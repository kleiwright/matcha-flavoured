say <D> Updating mainhand for elytra
data modify storage matcha_item:enchants held set from entity @s SelectedItem.components.minecraft:enchantments
item modify entity @s weapon.mainhand matcha_item:modify/elytra
# processing enchantment matcha:max_magic_protection / max_magic_protection 
execute store result score enchants_lvl_max_magic_protection item_updater run data get storage matcha_item:enchants held.'matcha:max_magic_protection'
execute unless score enchants_lvl_max_magic_protection item_updater matches 1.. run data modify storage matcha_item:enchants held merge value {'matcha:max_magic_protection': 1}
# processing enchantment matcha:cleanse_armor_maleffect / cleanse_armor_maleffect 
execute store result score enchants_lvl_cleanse_armor_maleffect item_updater run data get storage matcha_item:enchants held.'matcha:cleanse_armor_maleffect'
execute unless score enchants_lvl_cleanse_armor_maleffect item_updater matches 1.. run data modify storage matcha_item:enchants held merge value {'matcha:cleanse_armor_maleffect': 1}
# processing enchantment matcha:shakudo_armour / shakudo_armour 
execute store result score enchants_lvl_shakudo_armour item_updater run data get storage matcha_item:enchants held.'matcha:shakudo_armour'
execute unless score enchants_lvl_shakudo_armour item_updater matches 1.. run data modify storage matcha_item:enchants held merge value {'matcha:shakudo_armour': 1}
function matcha_item:enchants/mainhand with storage matcha_item:enchants