data modify storage matcha_item:enchants held set from entity @s equipment.offhand.components.minecraft:enchantments
# processing enchantment minecraft:sharpness / sharpness 
execute store result score enchants_lvl_sharpness item_updater run data get storage matcha_item:enchants held.'minecraft:sharpness'
execute unless score enchants_lvl_sharpness item_updater matches 3.. run data modify storage matcha_item:enchants held merge value {'minecraft:sharpness': 3}
item modify entity @s weapon.offhand matcha_item:modify/enoch
function matcha_item:enchants/offhand with storage matcha_item:enchants