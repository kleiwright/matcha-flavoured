$item modify entity @s armor.feet $(item_modify_str)
item modify entity @s armor.feet {"type":"set_custom_data", "tag":{"run_item_modify_str":0b, "item_modify_str":""}}
$item modify entity @s armor.feet {"type": "minecraft:set_lore",    "lore": [],  "mode": "replace_section",  "offset": 0,  "size": $(lore_length)}
