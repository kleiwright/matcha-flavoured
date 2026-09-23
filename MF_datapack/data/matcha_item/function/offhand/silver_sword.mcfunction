say <D> Updating offhand for silver_sword
data modify storage matcha_item:enchants held set from entity @s equipment.offhand.components.minecraft:enchantments
item modify entity @s weapon.offhand matcha_item:modify/silver_sword
# processing enchantment minecraft:smite / smite 
execute store result score enchants_lvl_smite item_updater run data get storage matcha_item:enchants held.'minecraft:smite'
execute unless score enchants_lvl_smite item_updater matches 3.. run data modify storage matcha_item:enchants held merge value {'minecraft:smite': 3}
# processing enchantment matcha:warding_1 / warding_1 
execute store result score enchants_lvl_warding_1 item_updater run data get storage matcha_item:enchants held.'matcha:warding_1'
execute unless score enchants_lvl_warding_1 item_updater matches 1.. run data modify storage matcha_item:enchants held merge value {'matcha:warding_1': 1}
function matcha_item:enchants/offhand with storage matcha_item:enchants