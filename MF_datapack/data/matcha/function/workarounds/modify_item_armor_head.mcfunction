$item modify entity @s armor.head $(item_modify_str)
item modify entity @s armor.head {"type":"set_custom_data", "tag":{"run_item_modify_str":0b, "item_modify_str":""}}
$item modify entity @s armor.head {"type": "minecraft:set_lore",    "lore": [],  "mode": "replace_section",  "offset": 0,  "size": $(lore_length)}
