$item modify entity @s weapon.offhand $(item_modify_str)
item modify entity @s weapon.offhand {"type":"set_custom_data", "tag":{"run_item_modify_str":0b, "item_modify_str":""}}
$item modify entity @s weapon.offhand {"type": "minecraft:set_lore",    "lore": [],  "mode": "replace_section",  "offset": 0,  "size": $(lore_length)}
