# Created using Python 3.14.7
import json, os, sys, re

# self explanatory
DBpath = os.path.join("item_updater_db.json")
debug = False
# the datapack folder
Matcha = os.path.join("MF_datapack", "data")
# the item updater folder
Updater = os.path.join(Matcha, "matcha_item")

# read and parse database
DBread = open(DBpath, 'r')
DB = json.load(DBread)

# get command line opts
try:
    opt = sys.argv[1]
except:
    opt = ""
try:
    opt2 = sys.argv[2]
except:
    opt2 = ""
try:
    opt3 = sys.argv[3]
except:
    opt3 = ""

# DEBUG mode: add debug printing on top of command
def debugf(command,arg):
    global debug
    debug = True
    match command:
        case "d":
            discover(arg)
        case "D":
            destructive()
        case "u":
            update()
        case "c":
            create(arg)
        case _:
            help_(True)

# discover mode: go through recipe(/lt?) folders and add files to db (non-destructive)
def discover(override):
    print("----Discover Mode in Debug----") if debug else None
    filename = re.compile("(.+)\\..+")
    head = re.compile("helmet")
    chest = re.compile("chestplate")
    legs = re.compile("leggings")
    feet = re.compile("boots")
    print("Overriding Files!") if override else None
    for folder in DB["folders"]:
        path = os.path.join(Matcha, DB["folders"][folder][0])
        print("[D] folder processing now: "+folder) if debug else None
        if DB["folders"][folder][1] == "recipe":
            files = os.listdir(path)
            for file_ in files:
                name = filename.match(file_).group(1)
                print("[D] file processing now: "+file_) if debug else None
                item = DB["files"].get(name)
                if override == "True" or name not in DB["files"]:
                    type_ = ""
                    filepath = os.path.join(path, file_)
                    opened = open(filepath, 'r')
                    read = json.load(opened)
                    result = read["result"]
                    try:
                        version = result["components"]["minecraft:custom_data"]["version"]
                    except:
                        version = None
                    if head.search(result.get("id")):
                        type_ = "helmet"
                    elif chest.search(result.get("id")):
                        type_ = "chestplate"
                    elif legs.search(result.get("id")):
                        type_ = "leggings"
                    elif feet.search(result.get("id")):
                        type_ = "boots"
                    elif result.get("components") != None:
                        if result["components"].get("minecraft:provides_trim_material") != None:
                            type_ = "trim_colour"
                        elif result["components"].get("minecraft:stored_enchantments") != None:
                            if head.search(result.get("id")):
                                type_ = "enchanted_helmet"
                            elif chest.search(result.get("id")):
                                type_ = "enchanted_chestplate"
                            elif legs.search(result.get("id")):
                                type_ = "enchanted_leggings"
                            elif feet.search(result.get("id")):
                                type_ = "enchanted_boots"
                            else:
                                type_ = "enchanted"
                        else:
                            type_ = "generic"
                    else:
                        type_ = "generic"
                    if "components" in result:
                        ignore = None
                        components = result["components"]
                    else:
                        ignore = True
                        version = None
                        components = {}
                    try:
                        names = [result["components"]["minecraft:item_name"]]
                    except:
                        names = []
                    id_ = result["id"]
                    useid = None
                    DB["files"][name] = {}
                    DB["files"][name] = {"version": version, "folder": [[folder]], "names": names, "id": id_, "use_id": useid, "type": type_, "processed": False, "components": components, "ignore": ignore}
                elif item != None:
                    item_folders = DB["files"][name]["folder"]
                    if [folder] in item_folders:
                        pass
                    else:
                        item_folders.append([folder])
                        DB["files"][name]["processed"] = False
                else:
                    print("[D] skipping item") if debug else None
        elif DB["folders"][folder][1] == "trade_with_levels":
            for directory in os.listdir(path):
                directory_path = os.path.join(path,directory)
                files = os.listdir(directory_path)
                for file_ in files:
                    name = filename.match(file_).group(1)
                    print("[D] file processing now: "+file_) if debug else None
                    item = DB["files"].get(name)
                    if override == "True" or name not in DB["files"]:
                        type_ = ""
                        filepath = os.path.join(directory_path, file_)
                        opened = open(filepath, 'r')
                        read = json.load(opened)
                        gives = read["gives"]
                        try:
                            version = gives["components"]["minecraft:custom_data"]["version"]
                        except:
                            version = None
                        if head.search(gives.get("id")):
                            type_ = "helmet"
                        elif chest.search(gives.get("id")):
                            type_ = "chestplate"
                        elif legs.search(gives.get("id")):
                            type_ = "leggings"
                        elif feet.search(gives.get("id")):
                            type_ = "boots"
                        elif gives.get("components") != None:
                            if gives["components"].get("minecraft:provides_trim_material") != None:
                                type_ = "trim_colour"
                            elif gives["components"].get("minecraft:stored_enchantments") != None:
                                type_ = "enchanted"
                            else:
                                type_ = "generic"
                        else:
                            type_ = "generic"
                        if "components" in gives:
                            ignore = None
                            components = gives["components"]
                        else:
                            ignore = True
                            version = None
                            components = {}
                        try:
                            names = [gives["components"]["minecraft:item_name"]]
                        except:
                            names = []
                        id_ = gives["id"]
                        useid = None
                        DB["files"][name] = {}
                        DB["files"][name] = {"version": version, "folder": [[folder,directory]], "names": names, "id": id_,     "use_id": useid, "type": type_, "processed": False, "components": components, "ignore": ignore}
                    elif item != None:
                        item_folders = DB["files"][name]["folder"]
                        if [folder,directory] in item_folders:
                            pass
                        else:
                            item_folders.append([folder,directory])
                            DB["files"][name]["processed"] = False
                    else:
                        print("[D] skipping item") if debug else None
        elif DB["folders"][folder][1] == "trade_no_levels":
            files = os.listdir(path)
            for file_ in files:
                name = filename.match(file_).group(1)
                print("[D] file processing now: "+file_) if debug else None
                item = DB["files"].get(name)
                if override == "True" or name not in DB["files"]:
                    type_ = ""
                    filepath = os.path.join(path, file_)
                    opened = open(filepath, 'r')
                    read = json.load(opened)
                    gives = read["gives"]
                    try:
                        version = gives["components"]["minecraft:custom_data"]["version"]
                    except:
                        version = None
                    if head.search(gives.get("id")):
                        type_ = "helmet"
                    elif chest.search(gives.get("id")):
                        type_ = "chestplate"
                    elif legs.search(gives.get("id")):
                        type_ = "leggings"
                    elif feet.search(gives.get("id")):
                        type_ = "boots"
                    elif gives.get("components") != None:
                        if gives["components"].get("minecraft:provides_trim_material") != None:
                            type_ = "trim_colour"
                        elif gives["components"].get("minecraft:stored_enchantments") != None:
                            type_ = "enchanted"
                        else:
                            type_ = "generic"
                    else:
                        type_ = "generic"
                    if "components" in gives:
                        ignore = None
                        components = gives["components"]
                    else:
                        ignore = True
                        version = None
                        components = {}
                    try:
                        names = [gives["components"]["minecraft:item_name"]]
                    except:
                        names = []
                    id_ = gives["id"]
                    useid = None
                    DB["files"][name] = {}
                    DB["files"][name] = {"version": version, "folder": [[folder]], "names": names, "id": id_,     "use_id": useid, "type": type_, "processed": False, "components": components, "ignore": ignore}
                elif item != None:
                    item_folders = DB["files"][name]["folder"]
                    if [folder] in item_folders:
                        pass
                    else:
                        item_folders.append([folder])
                        DB["files"][name]["processed"] = False
                else:
                    print("[D] skipping item") if debug else None
        elif DB["folders"][folder][1] == "loot_table":
            for item_ in os.listdir(path):
                item_path = os.path.join(path,item_)
                if os.path.isdir(item_path):
                    files = os.listdir(item_path)
                    directory = item_
                    print("[D] subfolder processing now: "+directory) if debug else None
                    for file_ in files:
                        name = filename.match(file_).group(1)
                        print("[D] file processing now: "+file_) if debug else None
                        item = DB["files"].get(name)
                        filepath = os.path.join(item_path, file_)
                        opened = open(filepath, 'r')
                        read = json.load(opened)
                        has_set_components_function = False
                        set_components_function = 0
                        try:
                            functions = read["pools"][0]["entries"][0]["functions"]
                            entry = read["pools"][0]["entries"][0]
                            for i in range(len(functions)):
                                if functions[i].get("function") == "minecraft:set_components":
                                    has_set_components_function = True
                                    set_components_function = i
                                else:
                                    continue
                        except:
                            pass
                        if len(read["pools"]) > 1 or len(read["pools"][0]["entries"]) > 1:
                            print("Skipping file "+file_+" in loot_table folder "+directory+" due to excessive pool/entry count; don't panic!'")
                            DB["files"][name] = {}
                            DB["files"][name] = {"version": None, "folder": [[folder,directory]], "names": [], "id": entry["name"], "use_id": None, "type": None, "processed": False, "components": {}, "ignore": True}
                        elif has_set_components_function == False:
                            print("[D] Skipping file "+file_+" in loot_table folder "+directory+" due to lack of components") if debug else None
                            DB["files"][name] = {}
                            DB["files"][name] = {"version": None, "folder": [[folder,directory]], "names": [], "id": entry["name"], "use_id": None, "type": None, "processed": False, "components": {}, "ignore": True}
                        elif override == "True" or name not in DB["files"]:
                            type_ = ""
                            entry = read["pools"][0]["entries"][0]
                            components = entry["functions"][set_components_function]["components"]
                            try:
                                version = components["minecraft:custom_data"]["version"]
                            except:
                                version = None
                            if head.search(entry.get("name")):
                                type_ = "helmet"
                            elif chest.search(entry.get("name")):
                                type_ = "chestplate"
                            elif legs.search(entry.get("name")):
                                type_ = "leggings"
                            elif feet.search(entry.get("name")):
                                type_ = "boots"
                            elif components.get("minecraft:provides_trim_material") != None:
                                type_ = "trim_colour"
                            elif components.get("minecraft:stored_enchantments") != None:
                                type_ = "enchanted"
                            else:
                                type_ = "generic"
                            try:
                                names = [components["minecraft:item_name"]]
                            except:
                                names = []
                            id_ = entry["name"]
                            useid = None
                            DB["files"][name] = {}
                            DB["files"][name] = {"version": version, "folder": [[folder,directory]], "names": names, "id": id_,     "use_id": useid, "type": type_, "processed": False, "components": components, "ignore": ignore}
                        elif item != None:
                            item_folders = DB["files"][name]["folder"]
                            if [folder,directory] in item_folders:
                                pass
                            else:
                                item_folders.append([folder,directory])
                                DB["files"][name]["processed"] = False
                        else:
                            print("[D] skipping item") if debug else None
                elif os.path.isfile(item_path):
                    file_ = item_
                    name = filename.match(file_).group(1)
                    print("[D] file processing now: "+file_) if debug else None
                    item = DB["files"].get(name)
                    filepath = item_path
                    opened = open(filepath, 'r')
                    read = json.load(opened)
                    has_set_components_function = False
                    set_components_function = 0
                    entry = read["pools"][0]["entries"][0]
                    functions = read["pools"][0]["entries"][0]["functions"]
                    for i in range(len(functions)):
                        if functions[i].get("function") == "minecraft:set_components":
                            has_set_components_function = True
                            set_components_function = i
                        else:
                            continue
                    if len(read["pools"]) > 1 or len(read["pools"][0]["entries"]) > 1:
                        print("Skipping file "+file_+" in loot_table folder "+folder+" due to excessive pool/entry count; don't panic!'")
                        DB["files"][name] = {}
                        DB["files"][name] = {"version": None, "folder": [[folder]], "names": [], "id": entry["name"], "use_id": None, "type": None, "processed": False, "components": {}, "ignore": True}
                    elif has_set_components_function == False:
                        print("[D] Skipping file "+file_+" in loot_table folder "+folder+" due to lack of components") if debug else None
                        DB["files"][name] = {}
                        DB["files"][name] = {"version": None, "folder": [[folder]], "names": [], "id": entry["name"], "use_id": None, "type": None, "processed": False, "components": {}, "ignore": True}
                    elif override == "True" or name not in DB["files"]:
                        type_ = ""
                        components = entry["functions"][set_components_function]["components"]
                        print(components)
                        try:
                            version = components["minecraft:custom_data"]["version"]
                        except:
                            version = None
                        if head.search(entry.get("name")):
                            type_ = "helmet"
                        elif chest.search(entry.get("name")):
                            type_ = "chestplate"
                        elif legs.search(entry.get("name")):
                            type_ = "leggings"
                        elif feet.search(entry.get("name")):
                            type_ = "boots"
                        elif components.get("minecraft:provides_trim_material") != None:
                            type_ = "trim_colour"
                        elif components.get("minecraft:stored_enchantments") != None:
                            type_ = "enchanted"
                        else:
                            type_ = "generic"
                        try:
                            names = [components["minecraft:item_name"]]
                        except:
                            names = []
                        id_ = entry["name"]
                        useid = None
                        ignore = None
                        DB["files"][name] = {}
                        DB["files"][name] = {"version": version, "folder": [[folder]], "names": names, "id": id_,     "use_id": useid, "type": type_, "processed": False, "components": components, "ignore": ignore}
                    elif item != None:
                        item_folders = DB["files"][name]["folder"]
                        if [folder] in item_folders:
                            pass
                        else:
                            item_folders.append([folder])
                            DB["files"][name]["processed"] = False
                    else:
                        print("[D] skipping item") if debug else None
        else:
            print("Skipping folder <"+folder+"> due to unprocessable folder type")
    print("Finishing touches!")
    item_ids = []
    for item in DB["files"]:
        item_ids.append(DB["files"][item]["id"])
    for item in DB["files"]:
        i = 0
        for item_id in item_ids:
            if DB["files"][item]["id"] == item_id:
                i += 1
            else:
                pass
        if i >= 2:
            DB["files"][item]["use_id"] = 0
        else:
            DB["files"][item]["use_id"] = 1
        if DB["files"][item]["use_id"] == 0 and DB["files"][item]["names"] == []:
            ignore = True
    with open(DBpath, 'w') as f:
        json.dump(DB, f, indent="\t")

# destructive mode: go through recipe(/lt?) folders and add 1 version custom data
def destructive():
    print("----Destructive Mode in Debug----") if debug else None
    files = DB["files"]
    folders = DB["folders"]
    for item in files:
        if files[item]["ignore"] == True:
            print("[D] ignored processing: "+item) if debug else None
        else:
            print("[D] processing now: "+item) if debug else None
            folder = files[item]["folder"]
            for i in folder:
                if folders[i[0]][1] == "recipe":
                    path = os.path.join(Matcha,folders[i[0]][0],item+".json")
                    read = open(path, 'r')
                    json_ = json.load(read)
                    if "components" in json_["result"]:
                        if "minecraft:custom_data" in json_["result"]["components"]:
                            json_["result"]["components"]["minecraft:custom_data"].update({"version": 1})
                        else:
                            json_["result"]["components"]["minecraft:custom_data"] = {"version": 1}
                        if debug and DB["options"]["askForConfirmation"] == "True":
                            print(json.dumps(json_, indent=1))
                            cont = input("[D] Confirm if this is the correct JSON file details [y/N]: ")
                            if cont == "y":
                                with open(path, 'w') as f:
                                    json.dump(json_, f, indent="\t")
                            else:
                                pass
                        else:
                            with open(path, 'w') as f:
                                json.dump(json_, f, indent="\t")
                        files[item]["version"] = 1
                    else:
                        files[item]["ignore"] = True
                elif folders[i[0]][1] == "trade_with_levels":
                    path = os.path.join(Matcha,folders[i[0]][0],i[1],item+".json")
                    read = open(path, 'r')
                    json_ = json.load(read)
                    if "components" in json_["gives"]:
                        if "minecraft:custom_data" in json_["gives"]["components"]:
                            json_["gives"]["components"]["minecraft:custom_data"].update({"version": 1})
                        else:
                            json_["gives"]["components"]["minecraft:custom_data"] = {"version": 1}
                        if debug and DB["options"]["askForConfirmation"] == "True":
                            print(json.dumps(json_, indent=1))
                            cont = input("[D] Confirm if this is the correct JSON file details [y/N]: ")
                            if cont == "y":
                                with open(path, 'w') as f:
                                    json.dump(json_, f, indent="\t")
                            else:
                                pass
                        else:
                            with open(path, 'w') as f:
                                json.dump(json_, f, indent="\t")
                        files[item]["version"] = 1
                    else:
                        files[item]["ignore"] = True
                elif folders[i[0]][1] == "trade_no_levels":
                    path = os.path.join(Matcha,folders[i[0]][0],item+".json")
                    read = open(path, 'r')
                    json_ = json.load(read)
                    if "components" in json_["gives"]:
                        if "minecraft:custom_data" in json_["gives"]["components"]:
                            json_["gives"]["components"]["minecraft:custom_data"].update({"version": 1})
                        else:
                            json_["gives"]["components"]["minecraft:custom_data"] = {"version": 1}
                        if debug and DB["options"]["askForConfirmation"] == "True":
                            print(json.dumps(json_, indent=1))
                            cont = input("[D] Confirm if this is the correct JSON file details [y/N]: ")
                            if cont == "y":
                                with open(path, 'w') as f:
                                    json.dump(json_, f, indent="\t")
                            else:
                                pass
                        else:
                            with open(path, 'w') as f:
                                json.dump(json_, f, indent="\t")
                        files[item]["version"] = 1
                    else:
                        files[item]["ignore"] = True
                elif folders[i[0]][1] == "loot_table":
                    path = ""
                    try:
                        path = os.path.join(Matcha,folders[i[0]][0],i[1],item+".json")
                    except:
                        path = os.path.join(Matcha,folders[i[0]][0],item+".json")
                    read = open(path, 'r')
                    json_ = json.load(read)
                    entry = json_["pools"][0]["entries"][0]
                    functions = entry["functions"]
                    has_set_components_function = False
                    set_components_function = 0
                    for i in range(len(functions)):
                        if functions[i].get("function") == "minecraft:set_components":
                            has_set_components_function = True
                            set_components_function = i
                        else:
                            continue
                    if has_set_components_function == True:
                        if "minecraft:custom_data" in functions[set_components_function]["components"]:
                            functions[set_components_function]["components"]["minecraft:custom_data"].update({"version": 1})
                            files[item]["components"].update({"minecraft:custom_data": {}})
                            files[item]["components"]["minecraft:custom_data"].update({"version": 1})
                        else:
                            functions[set_components_function]["components"]["minecraft:custom_data"] = {"version": 1}
                            files[item]["components"].update({"minecraft:custom_data": {}})
                            files[item]["components"]["minecraft:custom_data"] = {"version": 1}
                        if debug and DB["options"]["askForConfirmation"] == "True":
                            print(json.dumps(json_, indent=1))
                            cont = input("[D] Confirm if this is the correct JSON file details [y/N]: ")
                            if cont == "y":
                                with open(path, 'w') as f:
                                    json.dump(json_, f, indent="\t")
                            else:
                                pass
                        else:
                            with open(path, 'w') as f:
                                json.dump(json_, f, indent="\t")
                        files[item]["version"] = 1
                    else:
                        files[item]["ignore"] = True
                else:
                    print("[D] skipped processing <"+item+"> in folder <"+i+"> due to unprocessable folder") if debug else None
    if debug:
        print(json.dumps(DB, indent=1))
        cont = input("[D] Confirm if this is the correct JSON file details [y/N]: ")
        if cont == "y":
            with open(DBpath, 'w') as f:
                json.dump(DB, f, indent="\t")
        else:
            pass
    else:
        with open(DBpath, 'w') as f:
            json.dump(DB, f, indent="\t")

# update mode: update functions/predicates/advancements for items with a new version

# create mode: create new functions/predicates/advancements for items wth a version custom data
def create(item):
    print("----Create Mode in Debug----") if debug else None
    files = DB["files"]
    if item:
        obj = files[item]
        if obj["ignore"] == True:
            print("Ignored processing item "+item)
        elif obj["processed"] == True and DB["options"]["askForConfirmation"] == "True" and debug:
            cont = input("[D] reprocess file <"+item+">? [y/N] ")
            obj = creationHelper(obj, item) if cont == "y" else None
        else:
            obj = creationHelper(obj, item)
    else:
        for item in files:
            obj = files[item]
            if obj["ignore"] == True:
                print("[D] ignored processing: "+item) if debug else None
            elif obj["processed"] == True and DB["options"]["askForConfirmation"] == "True" and debug:
                cont = input("[D] reprocess file <"+item+">? [y/N] ")
                obj = creationHelper(obj, item) if cont == "y" else None
            else:
                obj = creationHelper(obj, item)
    if debug and DB["options"]["askForConfirmation"] == True:
        print(json.dumps(DB, indent=1))
        cont = input("[D] Confirm if this is the correct JSON file details [y/N]: ")
        if cont == "y":
            with open(DBpath, 'w') as f:
                json.dump(DB, f, indent="\t")
        else:
            pass
    else:
        with open(DBpath, 'w') as f:
            json.dump(DB, f, indent="\t")

class item_predicate():
    def __init__(self, predicate, slots):
        self.createDict = []
        for slot in slots:
            self.createDict.append({"condition": "minecraft:entity_properties", "entity": "this", "predicate": {"minecraft:slots": {slot: predicate}}})

def creationHelper(obj, item):
# helper CLI if there's no names, and for id use config
    if DB["options"]["createHelpDiag"] == "True":
        use_id = input("Please define if you want to use item id <"+obj["id"]+"> for item <"+item+"> [y/n] ")
        if use_id == "y":
            obj["use_id"] = 1
        else:
            obj["use_id"] = 0
        print("Names: "+str(obj["names"]))
        raw_names = input("Please provide additional names for this item <"+item+">, separated by commas. ")
        if raw_names == "":
            pass
        else:
            for raw_name in raw_names.split(", "):
                obj["names"].append(raw_name)
            print("[D] Split <"+raw_names+"> to the following: "+str(obj["names"])) if debug else None
    elif DB["options"]["assumeNamesArePopulated"] == "False":
        obj["names"] = []
        lang_path = os.path.join("MF_resourcepack/assets/matcha/lang/en_us.json")
        lang_json = json.load(open(lang_path, 'r'))
        try:
            obj["names"].append(obj["components"].get("minecraft:item_name")) if obj["components"].get("minecraft:item_name") != None else None
            obj["names"].append(lang_json[obj["components"]["minecraft:item_name"].get("translate")]) if obj["components"].get("minecraft:item_name") != None else None
        except:
            print("[D] name appending fail caused by: "+item) if debug else None
    else:
        pass
# defining variables
    print("[D] names: "+str(obj["names"])) if debug else None
    names = obj["names"]
    id_ = obj["id"]
    use_id = obj["use_id"]
    version = obj["version"]
    type_ = obj["type"]
    components = obj["components"]
    match type_:
        case "helmet":
            slots = ["armor.head"]
        case "chestplate":
            slots = ["armor.chest"]
        case "leggings":
            slots = ["armor.legs"]
        case "boots":
            slots = ["armor.feet"]
        case "enchanted_helmet":
            slots = ["armor.head"]
        case "enchanted_chestplate":
            slots = ["armor.chest"]
        case "enchanted_leggings":
            slots = ["armor.legs"]
        case "enchanted_boots":
            slots = ["armor.feet"]
        case "enchanted":
            slots = ["weapon.mainhand","weapon.offhand"]
        case "trim_colour":
            slots = ["weapon.mainhand","weapon.offhand"]
        case "generic":
            slots = ["weapon.mainhand","weapon.offhand"]
        case _:
            raise ValueError("So there isn't supposed to be this many item types...")
# defining item modifier
    item_modifier = {"function": "set_components", "components": components.copy()}
    enchantments = item_modifier["components"].pop("minecraft:stored_enchantments", {})
    enchantments.update(item_modifier["components"].pop("minecraft:enchantments", {}))
# defining item predicates
    id_predicates = item_predicate({"items": id_}, slots).createDict
    temp_names_predicates = []
    names_predicates = []
    for i in range(len(names)):
        temp_names_predicates.append(item_predicate({"components": {"minecraft:item_name": names[i]}}, slots).createDict)
        for i2 in range(len(temp_names_predicates[i])):
            names_predicates.append(temp_names_predicates[i][i2])
    version_predicates = item_predicate({"predicates": {"minecraft:custom_data": {"version": version}}}, slots).createDict
    trim_colour_predicates = []
    if type_ == "trim_colour":
        trim_colour_predicates = item_predicate({"components": {"minecraft:provides_trim_material": obj["components"]["minecraft:provides_trim_material"]}}, slots).createDict
    else:
        pass
# defining main predicates
    if len(slots) == 2:
        mainhand_predicate = {"condition": "minecraft:all_of", "terms": [{"condition": "minecraft:any_of", "terms": []}, {"condition": "minecraft:inverted", "term": {}}]}
        offhand_predicate = {"condition": "minecraft:all_of", "terms": [{"condition": "minecraft:any_of", "terms": []}, {"condition": "minecraft:inverted", "term": {}}]}
        i = 0
        for i in range(len(names_predicates)):
            if (i % 2) == 0:
                mainhand_predicate["terms"][0]["terms"].append(names_predicates[i])
            else:
                offhand_predicate["terms"][0]["terms"].append(names_predicates[i])
        if use_id == 1:
            mainhand_predicate["terms"][0]["terms"].append(id_predicates[0])
            offhand_predicate["terms"][0]["terms"].append(id_predicates[1])
        else:
            pass
        if type_ == "trim_colour":
            mainhand_predicate["terms"].append(trim_colour_predicates[0])
            offhand_predicate["terms"].append(trim_colour_predicates[1])
        else:
            pass
        mainhand_predicate["terms"][1].update({"term": version_predicates[0]})
        offhand_predicate["terms"][1].update({"term": version_predicates[1]})
    else:
        pass
# defining trigger advancement
    match type_:
        case "generic" | "enchanted" | "trim_materials":
            trigger_advancement = {"criteria": {item: {"conditions": {"player": [{"condition": "minecraft:any_of", "terms": [{"condition": "minecraft:all_of", "terms": [{"condition": "minecraft:any_of", "terms": []}, {"condition": "minecraft:inverted", "term": []}]},{"condition": "minecraft:all_of", "terms": [{"condition": "minecraft:any_of", "terms": []}, {"condition": "minecraft:inverted", "term": []}]}]}]}, "trigger": "minecraft:inventory_changed"}}, "requirements": [[item]],"rewards": {"function": "matcha_item:update/"+item}}
            if names != []:
                for i in range(len(names_predicates)):
                    trigger_advancement["criteria"][item]["conditions"]["player"][0]["terms"][0]["terms"][0]["terms"].append(names_predicates[i])
                    trigger_advancement["criteria"][item]["conditions"]["player"][0]["terms"][1]["terms"][0]["terms"].append(names_predicates[i])
            else:
                pass
            if use_id == 1:
                trigger_advancement["criteria"][item]["conditions"]["player"][0]["terms"][0]["terms"][0]["terms"].append(id_predicates[0])
                trigger_advancement["criteria"][item]["conditions"]["player"][0]["terms"][1]["terms"][0]["terms"].append(id_predicates[1])
            else:
                pass
            if type_ == "trim_colour":
                trigger_advancement["criteria"][item]["conditions"]["player"][0]["terms"].append({"condition": "minecraft:any_of", "terms": []})
                trigger_advancement["criteria"][item]["conditions"]["player"][0]["terms"][0]["terms"][2]["terms"].append(trim_colour_predicate[0])
                trigger_advancement["criteria"][item]["conditions"]["player"][0]["terms"][1]["terms"][2]        ["terms"].append(trim_colour_predicates[1])
            else:
                pass
            trigger_advancement["criteria"][item]["conditions"]["player"][0]["terms"][0]["terms"][1]["term"].append(version_predicates[0])
            trigger_advancement["criteria"][item]["conditions"]["player"][0]["terms"][1]["terms"][1]["term"].append(version_predicates[1])
        case _:
            trigger_advancement = {"criteria": {item: {"conditions": {"player": [{"condition": "minecraft:all_of", "terms": [{"condition": "minecraft:any_of", "terms": []}, {"condition": "minecraft:inverted", "term": []}]}]}, "trigger": "minecraft:inventory_changed"}}, "requirements": [[item]],"rewards": {"function": "matcha_item:update/"+item}}
            if names != []:
                for i in range(len(names_predicates)):
                    trigger_advancement["criteria"][item]["conditions"]["player"][0]["terms"][0]["terms"].append(names_predicates[i])
            else:
                pass
            if use_id == 1:
                for id_predicate in id_predicates:
                    trigger_advancement["criteria"][item]["conditions"]["player"][0]["terms"][0]["terms"].append(id_predicate)
            else:
                pass
            trigger_advancement["criteria"][item]["conditions"]["player"][0]["terms"][1]["term"].append(version_predicates[0])
# defining update functions
    update_function = ""
    mainhand_function = ""
    offhand_function = ""
    if debug:
        update_function += "say <D> Triggered update function for "+item+"\n"
        mainhand_function += "say <D> Updating mainhand for "+item+"\n"
        offhand_function += "say <D> Updating offhand for "+item+"\n"
    else: pass
    match type_:
        case "helmet" | "leggings" | "boots" | "chestplate":
            update_function += "item modify entity @s "+slots[0]+" matcha_item:modify/"+item+"\n"
            update_function += "advancement revoke @s only matcha_item:trigger/"+item
        case "enchanted_helmet" | "enchanted_chestplate" | "enchanted_leggings" | "enchanted_boots":
            update_function += "item modify entity @s "+slots[0]+" matcha_item:modify/"+item+"\n"
            update_function += "data modify storage matcha_item:enchants held set from entity @s "+slots[0].replace('armor','equipment')+".components.minecraft:enchantments\n"
            for enchantment,value in enchantments.items():
                try:
                    plain = enchantment.split(":")[1]
                except:
                    plain = enchantment
                update_function += "# processing enchantment "+enchantment+" / "+plain+" \n"
                update_function += "execute store result score enchants_lvl_"+plain+" item_updater run data get storage matcha_item:enchants held.'"+enchantment+"'\n"
                update_function += "execute unless score enchants_lvl_"+plain+" item_updater matches "+str(value)+".. run data modify storage matcha_item:enchants held merge value {'"+enchantment+"': "+str(value)+"}\n"
            update_function += "function matcha_item:enchants/"+slots[0].replace('armor.','')+" with storage matcha_item:enchants\n"
            update_function += "advancement revoke @s only matcha_item:trigger/"+item
        case "enchanted":
            # detect specific slot
            update_function += "execute if predicate matcha_item:mainhand/"+item+" run function matcha_item:enchants/"+item+"\n"
            update_function += "execute if predicate matcha_item:offhand/"+item+" run function matcha_item:enchants/"+item+"\n"
            # revoke advancement
            update_function += "advancement revoke @s only matcha_item:trigger/"+item
            # process enchantments
            mainhand_function += "data modify storage matcha_item:enchants held set from entity @s SelectedItem.components.minecraft:enchantments\n"
            offhand_function += "data modify storage matcha_item:enchants held set from entity @s equipment.offhand.components.minecraft:enchantments\n"
            # modify item
            mainhand_function += "item modify entity @s "+slots[0]+" matcha_item:modify/"+item+"\n"
            offhand_function += "item modify entity @s "+slots[1]+" matcha_item:modify/"+item+"\n"
            # process individual enchantments (for this example, enchantment {enchant} has value 1)
            for enchantment,value in enchantments.items():
                try:
                    plain = enchantment.split(":")[1]
                except:
                    plain = enchantment
                mainhand_function += "# processing enchantment "+enchantment+" / "+plain+" \n"
                mainhand_function += "execute store result score enchants_lvl_"+plain+" item_updater run data get storage matcha_item:enchants held.'"+enchantment+"'\n"
                mainhand_function += "execute unless score enchants_lvl_"+plain+" item_updater matches "+str(value)+".. run data modify storage matcha_item:enchants held merge value {'"+enchantment+"': "+str(value)+"}\n"
                offhand_function += "# processing enchantment "+enchantment+" / "+plain+" \n"
                offhand_function += "execute store result score enchants_lvl_"+plain+" item_updater run data get storage matcha_item:enchants held.'"+enchantment+"'\n"
                offhand_function += "execute unless score enchants_lvl_"+plain+" item_updater matches "+str(value)+".. run data modify storage matcha_item:enchants held merge value {'"+enchantment+"': "+str(value)+"}\n"
            # run special item modifier for enchants
            mainhand_function += "function matcha_item:enchants/mainhand with storage matcha_item:enchants"
            offhand_function += "function matcha_item:enchants/offhand with storage matcha_item:enchants"
        case "generic":
            update_function += "execute if predicate matcha_item:mainhand/"+item+" run function matcha_item:mainhand/"+item+"\n"
            update_function += "execute if predicate matcha_item:offhand/"+item+" run function matcha_item:offhand/"+item+"\n"
            update_function += "advancement revoke @s only matcha_item:trigger/"+item
            mainhand_function += "item modify entity @s "+slots[0]+" matcha_item:modify/"+item
            offhand_function += "item modify entity @s "+slots[1]+" matcha_item:modify/"+item
        case _:
            pass
# define paths
    advancements_path = os.path.join(Updater,"advancement/trigger",item+".json")
    item_modifiers_path = os.path.join(Updater,"item_modifier/modify",item+".json")
    update_function_path = os.path.join(Updater,"function/update",item+".mcfunction")
    mainhand_function_path = os.path.join(Updater,"function/mainhand",item+".mcfunction")
    offhand_function_path = os.path.join(Updater,"function/offhand",item+".mcfunction")
    mainhand_enchants_function_path = os.path.join(Updater,"function/enchants/mainhand",item+".mcfunction")
    offhand_enchants_function_path = os.path.join(Updater,"function/enchants/offhand",item+".mcfunction")
    mainhand_predicate_path = os.path.join(Updater,"predicate/mainhand",item+".json")
    offhand_predicate_path = os.path.join(Updater,"predicate/offhand",item+".json")
    match type_:
        case "helmet" | "leggings" | "boots" | "chestplate" | "enchanted_helmet" | "enchanted_leggings" | "enchanted_boots" | "enchanted_chestplate":
            paths = [[advancements_path, trigger_advancement, "advancement"], [update_function_path, update_function, "function"], [item_modifiers_path, item_modifier, "item_modifier"]]
            needed_yesses = 3
        case "enchanted" | "generic" | "trim_colour":
            paths = [[advancements_path, trigger_advancement, "advancement"], [update_function_path, update_function, "function"], [mainhand_function_path, mainhand_function, "function"], [offhand_function_path, offhand_function, "function"], [mainhand_predicate_path, mainhand_predicate, "predicate"], [offhand_predicate_path, offhand_predicate, "predicate"], [item_modifiers_path, item_modifier, "item_modifier"]]
            needed_yesses = 7
        case _:
            pass
# write it!
    yesses = 0
    for path in paths:
        if debug and DB["options"]["askForConfirmation"] == "True":
            if path[2] != "function":
                print("[D] "+json.dumps(path[1], indent=1))
            else:
                print("[D] "+path[1])
            cont = input("[D] Confirm if this is the correct <"+path[2]+"> definition [y/N]: ")
            if cont == "y":
                if path[2] != "function":
                    with open(path[0], 'w') as f:
                        json.dump(path[1], f, indent="\t")
                        yesses +=1
                else:
                    with open(path[0], 'w') as f:
                        f.write(path[1])
                        yesses +=1
            else:
                pass
        else:
            if path[2] != "function":
                with open(path[0], 'w') as f:
                    json.dump(path[1], f, indent="\t")
                    yesses +=1
            else:
                with open(path[0], 'w') as f:
                    f.write(path[1])
                    yesses +=1
# return the object
    if yesses == needed_yesses:
        obj["processed"] = True
    else:
        pass
    return obj

# function stuff:
# - armor
#  item modify entity @s armor.${type} matcha_item:${item}
# - tools
#  execute if predicate matcha_item:mainhand/${item} run matcha_item:mainhand/${item}
#  execute if predicate matcha_item:offhand/${item} run matcha_item:offhand/${item}
# - generics
#  execute if predicate matcha_item:mainhand/${item} run matcha_item:mainhand/${item}
#  execute if predicate matcha_item:offhand/${item} run matcha_item:offhand/${item}

# advancement stuff:
#  conditions
#    player
#      any_of
#        all_of (mainhand)
#          any_of
#            name_predicates
#            id_predicate
#          inverse
#            any_of (not needed in armor)
#              version_predicate
#        all_of (offhand)
#          any_of
#            name_predicates
#            id_predicate
#          inverse
#            any_of (not needed in armor)
#              version_predicate

def config(option):
    options = DB["options"]
    if option != "":
        if options.get(option) != None:
            options[option] = input("Configure value for option <"+option+">, currently set to "+options[option]+": ")
    else:
        print(json.dumps(options, indent=2))
        option = input("Choose an option to configure: ")
        if options.get(option) != None:
            options[option] = input("Configure value for option <"+option+">, currently set to "+options[option]+": ")
    if debug:
        print(json.dumps(DB["options"], indent=1))
        cont = input("[D] Confirm if this is the correct (partial) JSON file details [y/N]: ")
        if cont == "y":
            with open(DBpath, 'w') as f:
                json.dump(DB, f, indent="\t")
        else:
            pass
    else:
        with open(DBpath, 'w') as f:
            json.dump(DB, f, indent="\t")


# help mode: command help and maaybe documentation
def help_(debug):
    if debug:
        print("""----DEBUG MODE----
This script is used with command line arguments, eg. py [script] [arguments]. These are the following arguments:
    d (override) - Discovers files in configured folders and adds to database
    D - Go through configured folders and add 1 version custom data
    u (file) - Update item updater for items with new version
    c (file) - Create new item updater for items with version custom data
    C (option) - Configure a stored option
(file): optionally, name of the file excluding file extension
(override): [boolean] optionally,  override existing item entries
(option): optionally, a stored option""")
    else:
        print("""This script is used with command line arguments, eg. py [script] [arguments]. These are the following arguments:
    d (override) - Discovers files in configured folders and adds to database
    D - Go through configured folders and add 1 version custom data
    u (file) - Update item updater for items with new version
    c (file) - Create new item updater for items with version custom data
    e - Create new processing functions for item
    C (option) - Configure a stored option
(file): optionally, name of the file excluding file extension
(override): [boolean] optionally,  override existing item entries
(option): optionally, a stored option""")

# match command options and run different functions
match opt:
    case "d":
        discover(opt2)
    case "D":
        destructive()
    case "u":
        update()
    case "c":
        create(opt2)
    case "C":
        config(opt2)
    case "DEBUG":
        debugf(opt2,opt3)
    case _:
        help_(False)
