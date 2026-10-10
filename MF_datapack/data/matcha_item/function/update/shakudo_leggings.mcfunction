item modify entity @s armor.legs matcha_item:modify/shakudo_leggings
data modify storage matcha_item:enchants held set from entity @s equipment.legs.components.minecraft:enchantments
# processing enchantment matcha:cleanse_armor_legs / cleanse_armor_legs 
execute store result score enchants_lvl_cleanse_armor_legs item_updater run data get storage matcha_item:enchants held.'matcha:cleanse_armor_legs'
execute unless score enchants_lvl_cleanse_armor_legs item_updater matches 1.. run data modify storage matcha_item:enchants held merge value {'matcha:cleanse_armor_legs': 1}
# processing enchantment matcha:magic_protection / magic_protection 
execute store result score enchants_lvl_magic_protection item_updater run data get storage matcha_item:enchants held.'matcha:magic_protection'
execute unless score enchants_lvl_magic_protection item_updater matches 1.. run data modify storage matcha_item:enchants held merge value {'matcha:magic_protection': 1}
# processing enchantment matcha:shakudo_armour / shakudo_armour 
execute store result score enchants_lvl_shakudo_armour item_updater run data get storage matcha_item:enchants held.'matcha:shakudo_armour'
execute unless score enchants_lvl_shakudo_armour item_updater matches 1.. run data modify storage matcha_item:enchants held merge value {'matcha:shakudo_armour': 1}
function matcha_item:enchants/legs with storage matcha_item:enchants
advancement revoke @s only matcha_item:trigger/shakudo_leggings