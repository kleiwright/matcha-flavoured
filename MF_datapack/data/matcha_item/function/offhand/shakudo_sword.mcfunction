say <D> Updating offhand for shakudo_sword
data modify storage matcha_item:enchants held set from entity @s equipment.offhand.components.minecraft:enchantments
item modify entity @s weapon.offhand matcha_item:modify/shakudo_sword
# processing enchantment minecraft:sweeping_edge / sweeping_edge 
execute store result score enchants_lvl_sweeping_edge item_updater run data get storage matcha_item:enchants held.'minecraft:sweeping_edge'
execute unless score enchants_lvl_sweeping_edge item_updater matches 1.. run data modify storage matcha_item:enchants held merge value {'minecraft:sweeping_edge': 1}
# processing enchantment matcha:shakudo_weapon / shakudo_weapon 
execute store result score enchants_lvl_shakudo_weapon item_updater run data get storage matcha_item:enchants held.'matcha:shakudo_weapon'
execute unless score enchants_lvl_shakudo_weapon item_updater matches 1.. run data modify storage matcha_item:enchants held merge value {'matcha:shakudo_weapon': 1}
function matcha_item:enchants/offhand with storage matcha_item:enchants