say <D> Updating offhand for hepatizon_sword
data modify storage matcha_item:enchants held set from entity @s equipment.offhand.components.minecraft:enchantments
item modify entity @s weapon.offhand matcha_item:modify/hepatizon_sword
# processing enchantment matcha:riposte / riposte 
execute store result score enchants_lvl_riposte item_updater run data get storage matcha_item:enchants held.'matcha:riposte'
execute unless score enchants_lvl_riposte item_updater matches 2.. run data modify storage matcha_item:enchants held merge value {'matcha:riposte': 2}
function matcha_item:enchants/offhand with storage matcha_item:enchants