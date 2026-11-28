#generate workaround functions for item modification, to be used in tick.mcfunction

from pathlib import Path


slots_to_data_paths = { # all that matter, hopefully
    "weapon.mainhand":"SelectedItem",
    "armor.head": "equipment.head",
    "armor.chest": "equipment.chest",
    "armor.legs": "equipment.legs",
    "armor.feet": "equipment.feet",
    "weapon.offhand": "equipment.offhand"
}



def filename(slot):
    return "modify_item_" + slot.replace(".", "_") + ".mcfunction"


def generate_content(slot):
    return (
        f"$item modify entity @s {slot} $(item_modify_str)\n"
        f'item modify entity @s {slot} {{"type":"set_custom_data", "tag":{{"run_item_modify_str":0b, "item_modify_str":""}}}}\n'
        f'$item modify entity @s {slot} {{"type": "minecraft:set_lore",    "lore": [],  "mode": "replace_section",  "offset": 0,  "size": $(lore_length)}}\n'
        # compatibility checks can be added here (for example if protection lvl > 4 set it to 4, etc)
    )


def main():
    all_template_single = r'execute as @a[nbt={"AAA":{"components":{"minecraft:custom_data":{"run_item_modify_str":1b}}}}] run function matcha:workarounds/CCC with entity @s DDD.components."minecraft:custom_data"'
    all_template_double = r'execute as @a[nbt={"AAA":{"BBB":{"components":{"minecraft:custom_data":{"run_item_modify_str":1b}}}}}] run function matcha:workarounds/CCC with entity @s DDD.components."minecraft:custom_data"'
    all_funcs = []

    

    for slot, data in slots_to_data_paths.items():
        path = Path(".") / filename(slot)
        path.write_text(generate_content(slot), encoding="utf-8")
        is_double = "." in data
        template = all_template_double if is_double else all_template_single
        first = data.split(".")[0]
        second = data.split(".")[1] if is_double else None
        all_funcs.append(template.replace("AAA", first).replace("BBB", second if second else "").replace("CCC", filename(slot).replace(".mcfunction", "")).replace("DDD", data))

    all_path = Path(".") / "run_item_modify_str.mcfunction"
    all_path.write_text("\n".join(all_funcs) + "\n", encoding="utf-8")

if __name__ == "__main__":
    main()

