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

# cache for temporary stuff
cache = {}

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
            update(arg)
        case "c":
            create(arg)
        case _:
            help_(True)
    print("CACHE DUMP!")
    print(str(cache))

def genericItemProcessor(override,name,id_,components,folder_list):
    try:
        cache[name]
    except:
        cache[name] = {"overriden": False}
    print("[D] file processing now: "+name) if debug else None
    head = re.compile("helmet")
    chest = re.compile("chestplate")
    legs = re.compile("leggings")
    feet = re.compile("boots")
    diamond = re.compile("^(minecraft:diamond)_(.+)")
    baked_apple = re.compile("minecraft:fermented_spider_eye")
    item = DB["files"].get(name)
    if override == "True" and cache[name]["overriden"] == False or name not in DB["files"]:
        if override == "True":
            cache[name]["overriden"] = True
        else: pass
        type_ = ""
        ignore = None
        useid = None
        usenames = None
        usemodels = None
        names = []
        models = []
        try:
            version = components["minecraft:custom_data"]["version"]
        except:
            version = None
        if components != None:
            if diamond.search(id_):
                if head.search(id_):
                    type_ = "diamond_helmet"
                elif chest.search(id_):
                    type_ = "diamond_chestplate"
                elif legs.search(id_):
                    type_ = "diamond_leggings"
                elif feet.search(id_):
                    type_ = "diamond_boots"
                else:
                    type_ = "diamond"
            elif baked_apple.search(id_):
                if components.get("minecraft:item_name") != None:
                    type_ = "mineral"
                else:
                    type_ = "baked_apple"
            elif components.get("minecraft:provides_trim_material") != None:
                type_ = "trim_colour"
            elif components.get("minecraft:stored_enchantments") != None:
                if head.search(id_):
                    type_ = "enchanted_helmet"
                elif chest.search(id_):
                    type_ = "enchanted_chestplate"
                elif legs.search(id_):
                    type_ = "enchanted_leggings"
                elif feet.search(id_):
                    type_ = "enchanted_boots"
                else:
                    type_ = "enchanted"
            elif components.get("minecraft:enchantments") != None:
                if head.search(id_):
                    type_ = "enchanted_helmet"
                elif chest.search(id_):
                    type_ = "enchanted_chestplate"
                elif legs.search(id_):
                    type_ = "enchanted_leggings"
                elif feet.search(id_):
                    type_ = "enchanted_boots"
                else:
                    type_ = "enchanted"
            else:
                if head.search(id_):
                    type_ = "helmet"
                elif chest.search(id_):
                    type_ = "chestplate"
                elif legs.search(id_):
                    type_ = "leggings"
                elif feet.search(id_):
                    type_ = "boots"
                else:
                    type_ = "generic"
        else:
            type_ = "generic"
            ignore = True
            components = {}
        try:
            names = DB["files"][name]["names"]
            if components["minecraft:item_name"] in names:
                pass
            else:
                names.append(components["minecraft:item_name"])
        except:
            if components.get("minecraft:item_name") != None:
                names = [components.get("minecraft:item_name")]
            else:
                names = []
                usenames = False
        try:
            models = DB["files"][name]["models"]
            if components["minecraft:item_model"] in models:
                pass
            else:
                models.append(components["minecraft:item_model"])
        except:
            if components.get("minecraft:item_model") != None:
                models = [components.get("minecraft:item_model")]
            else:
                models = []
                usemodels = False
        DB["files"][name] = {}
        DB["files"][name] = {"version": version, "folder": [folder_list], "names": names, "models": models, "id": id_, "use": [useid,usenames,usemodels], "type": type_, "processed": False, "components": components, "ignore": ignore}
        return True
    elif item != None and (cache[name]["overriden"] == True or override != "True"):
        item_folders = DB["files"][name]["folder"]
        if folder_list in item_folders:
            pass
        else:
            item_folders.append(folder_list)
            DB["files"][name]["processed"] = False
        return True
    else:
        print("[D] skipping item "+name) if debug else None
        return False

def ltItemProcessor(override,pools,entries,json_,name,folder_list):
    has_set_components_function = False
    set_components_function = 0
    functions = []
    directory_msg = ""
    try:
        directory_msg = " in loot_table folder "+folder_list[1]
    except:
        pass
    try:
        functions = json_["pools"][0]["entries"][0]["functions"]
        for i in range(len(functions)):
            if functions[i].get("function") == "minecraft:set_components":
                has_set_components_function = True
                set_components_function = i
            else:
                continue
    except:
        pass
    if pools > 1 or entries > 1:
        print("Skipping file "+name+directory_msg+" due to excessive pool/entry count; don't panic!")
        return False
    elif has_set_components_function == False:
        print("[D] Skipping file "+name+directory_msg+" due to lack of components") if debug else None
        return False
    else:
        entry = json_["pools"][0]["entries"][0]
        id_ = entry["name"]
        components = entry["functions"][set_components_function]["components"]
        return genericItemProcessor(override,name,id_,components,folder_list)

# discover mode: go through recipe(/lt?) folders and add files to db (non-destructive)
def discover(override):
    print("----Discover Mode in Debug----") if debug else None
    filename = re.compile("(.+)\\..+")
    print("Overriding Files!") if override == "True" else None
    for folder in DB["folders"]:
        path = os.path.join(Matcha, DB["folders"][folder][0])
        print("[D] folder processing now: "+folder) if debug else None
        if DB["folders"][folder][1] == "recipe":
            files = os.listdir(path)
            for file_ in files:
                name = filename.match(file_).group(1)
                components = {}
                id_ = ""
                folder_list = [folder]
                with open(os.path.join(path,file_),'r') as f:
                    json_ = json.load(f)
                    components = json_["result"].get("components")
                    id_ = json_["result"]["id"]
                genericItemProcessor(override,name,id_,components,folder_list)
        elif DB["folders"][folder][1] == "trade_with_levels":
            for directory in os.listdir(path):
                directory_path = os.path.join(path,directory)
                files = os.listdir(directory_path)
                for file_ in files:
                    name = filename.match(file_).group(1)
                    components = {}
                    id_ = ""
                    folder_list = [folder,directory]
                    with open(os.path.join(directory_path,file_),'r') as f:
                        json_ = json.load(f)
                        components = json_["gives"].get("components")
                        id_ = json_["gives"]["id"]
                    genericItemProcessor(override,name,id_,components,folder_list)
        elif DB["folders"][folder][1] == "trade_no_levels":
            files = os.listdir(path)
            for file_ in files:
                name = filename.match(file_).group(1)
                components = {}
                id_ = ""
                folder_list = [folder]
                with open(os.path.join(path,file_),'r') as f:
                    json_ = json.load(f)
                    components = json_["gives"].get("components")
                    id_ = json_["gives"]["id"]
                genericItemProcessor(override,name,id_,components,folder_list)
        elif DB["folders"][folder][1] == "loot_table":
            for item_ in os.listdir(path):
                item_path = os.path.join(path,item_)
                if os.path.isdir(item_path):
                    files = os.listdir(item_path)
                    directory = item_
                    print("[D] subfolder processing now: "+directory) if debug else None
                    for file_ in files:
                        name = filename.match(file_).group(1)
                        json_ = {}
                        folder_list = [folder,directory]
                        pools = 0
                        entries = 0
                        functions = []
                        with open(os.path.join(path,directory,file_),'r') as f:
                            json_ = json.load(f)
                            pools = len(json_["pools"])
                            entries = len(json_["pools"][0]["entries"])
                        ltItemProcessor(override,pools,entries,json_,name,folder_list)
                elif os.path.isfile(item_path):
                    file_ = item_
                    name = filename.match(file_).group(1)
                    json_ = {}
                    folder_list = [folder]
                    pools = 0
                    entries = 0
                    functions = []
                    with open(os.path.join(path,file_),'r') as f:
                        json_ = json.load(f)
                        pools = len(json_["pools"])
                        entries = len(json_["pools"][0]["entries"])
                    ltItemProcessor(override,pools,entries,json_,name,folder_list)
        elif DB["folders"][folder][1] == "quirk_lt":
            for item_ in os.listdir(path):
                item_path = os.path.join(path,item_)
                if os.path.isdir(item_path):
                    files = os.listdir(item_path)
                    directory = item_
                    print("[D] subfolder processing now: "+directory) if debug else None
                    for file_ in files:
                        if directory == "misc":
                            name = filename.match(file_).group(1)
                        else:
                            name = directory+"_"+filename.match(file_).group(1)
                        json_ = {}
                        folder_list = [folder,directory]
                        pools = 0
                        entries = 0
                        functions = []
                        with open(os.path.join(path,directory,file_),'r') as f:
                            json_ = json.load(f)
                            pools = len(json_["pools"])
                            entries = len(json_["pools"][0]["entries"])
                        ltItemProcessor(override,pools,entries,json_,name,folder_list)
                else: pass
        else:
            print("Skipping folder <"+folder+"> due to unprocessable folder type")
    print("Finishing touches!")
    item_ids = []
    item_names = []
    item_models = []
    for item in DB["files"]:
        print("[D] Item processing: "+item) if debug else None
        item_ids.append(DB["files"][item]["id"])
        for item_name in DB["files"][item]["names"]:
            item_names.append(item_name)
        for item_model in DB["files"][item]["models"]:
            item_models.append(item_model)
    for item in DB["files"]:
        id_i = 0
        names_i = 0
        models_i = 0
        use = DB["files"][item]["use"]
        useid = use[0]
        usenames = use[1]
        usemodels = use[2]
        for item_id in item_ids:
            if DB["files"][item]["id"] == item_id:
                id_i += 1
            else:
                pass
        for item_name in item_names:
            if item_name in DB["files"][item]["names"]:
                names_i += 1
            else:
                pass
        for item_model in item_models:
            if item_name in DB["files"][item]["models"]:
                names_i += 1
            else:
                pass
        for iteratable in [[id_i,0],[names_i,1],[models_i,2]]:
            if use[iteratable[1]] == None:
                if iteratable[0] >= 2 and not DB["files"][item]["type"] == "baked_apple":
                    use[iteratable[1]] = False
                else:
                    use[iteratable[1]] = True
            else:
                continue
        if useid == False and usenames == False and usemodels == False:
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
                components = None
                json_ = {}
                if folders[i[0]][1] == "recipe":
                    path = os.path.join(Matcha,folders[i[0]][0],item+".json")
                    read = open(path, 'r')
                    json_ = json.load(read)
                    components = json_["result"].get("components")
                elif folders[i[0]][1] == "trade_with_levels":
                    path = os.path.join(Matcha,folders[i[0]][0],i[1],item+".json")
                    read = open(path, 'r')
                    json_ = json.load(read)
                    components = json_["gives"].get("components")
                elif folders[i[0]][1] == "trade_no_levels":
                    path = os.path.join(Matcha,folders[i[0]][0],item+".json")
                    read = open(path, 'r')
                    json_ = json.load(read)
                    components = json_["gives"].get("components")
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
                        components = functions[set_components_function]["components"]
                    else:
                        files[item]["ignore"] = True
                elif folders[i[0]][1] == "quirk_lt":
                    path = ""
                    if i[1] == "misc":
                        item_pathable = item
                    else:
                        item_pathable = item.replace(i[1]+"_","")
                    try:
                        path = os.path.join(Matcha,folders[i[0]][0],i[1],item_pathable+".json")
                    except:
                        path = os.path.join(Matcha,folders[i[0]][0],item_pathable+".json")
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
                    components = functions[set_components_function]["components"]
                if components != None:
                    if "minecraft:custom_data" in components:
                        components["minecraft:custom_data"].update({"version": 1})
                    else:
                        components["minecraft:custom_data"] = {"version": 1}
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
                    print("[D] skipped processing <"+item+"> in folder <"+i+"> due to unprocessable file (No components!)") if debug else None
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
def update(item):
    for item in DB["files"]:
        print("[D] Checking Item: "+item) if debug else None
        if DB["files"][item]["ignore"] == True:
            print("[D] Skipping Item.") if debug else None
        else:
            original_components = DB["files"][item]["components"].copy()
            folders = DB["folders"]
            new_components = []
            for i in DB["files"][item]["folder"]:
                json_ = {}
                path = ""
                if folders[i[0]][1] == "recipe":
                    path = os.path.join(Matcha,folders[i[0]][0],item+".json")
                    read = open(path, 'r')
                    json_ = json.load(read)
                    new_component = json_["result"].get("components")
                elif folders[i[0]][1] == "trade_with_levels":
                    path = os.path.join(Matcha,folders[i[0]][0],i[1],item+".json")
                    read = open(path, 'r')
                    json_ = json.load(read)
                    new_component = json_["gives"].get("components")
                elif folders[i[0]][1] == "trade_no_levels":
                    path = os.path.join(Matcha,folders[i[0]][0],item+".json")
                    read = open(path, 'r')
                    json_ = json.load(read)
                    new_component = json_["gives"].get("components")
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
                        new_component = functions[set_components_function]["components"]
                    else:
                        files[item]["ignore"] = True
                elif folders[i[0]][1] == "quirk_lt":
                    path = ""
                    if i[1] == "misc":
                        item_pathable = item
                    else:
                        item_pathable = item.replace(i[1]+"_","")
                    try:
                        path = os.path.join(Matcha,folders[i[0]][0],i[1],item_pathable+".json")
                    except:
                        path = os.path.join(Matcha,folders[i[0]][0],item_pathable+".json")
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
                    new_component = functions[set_components_function]["components"]
                if new_component == original_components or new_component == None: pass
                else:
                    new_components.append(new_component)
            if new_components == []: pass
            else:
                components = None
                with open('original.txt', 'w') as f:
                    json.dump(original_components, f, indent="\t")
                for i in range(len(new_components)):
                    with open('new_'+str(i+1)+'.txt', 'w') as f:
                        json.dump(new_components[i], f, indent="\t")
                component_action = input("Different components detected! Either keep the orginal components in original.txt [0], or replace it with new components [1"+("-"+str(len(new_components)) if len(new_components) > 1 else "")+"] ")
                match int(component_action):
                    case 0:
                        components = original_components
                    case _:
                        components = new_components[int(component_action)-1]
                        DB["files"][item]["components"] = components
                        version = DB["files"][item]["version"]+1
                        components["minecraft:custom_data"]["version"] = version
                print("[D] Components: "+str(components)) if debug else None
                for i in DB["files"][item]["folder"]:
                    json_ = {}
                    path = ""
                    component = {}
                    print("[D] Attempting write to folder "+i[0]+" with type "+folders[i[0]][1])
                    if folders[i[0]][1] == "recipe":
                        print("recipe")
                        path = os.path.join(Matcha,folders[i[0]][0],item+".json")
                        read = open(path, 'r')
                        json_ = json.load(read)
                        component = json_["result"].get("components")
                    elif folders[i[0]][1] == "trade_with_levels":
                        path = os.path.join(Matcha,folders[i[0]][0],i[1],item+".json")
                        read = open(path, 'r')
                        json_ = json.load(read)
                        component = json_["gives"].get("components")
                    elif folders[i[0]][1] == "trade_no_levels":
                        path = os.path.join(Matcha,folders[i[0]][0],item+".json")
                        read = open(path, 'r')
                        json_ = json.load(read)
                        component = json_["gives"].get("components")
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
                            component = functions[set_components_function]["components"]
                        else:
                            files[item]["ignore"] = True
                    elif folders[i[0]][1] == "quirk_lt":
                        path = ""
                        if i[1] == "misc":
                            item_pathable = item
                        else:
                            item_pathable = item.replace(i[1]+"_","")
                        try:
                            path = os.path.join(Matcha,folders[i[0]][0],i[1],item_pathable+".json")
                        except:
                            path = os.path.join(Matcha,folders[i[0]][0],item_pathable+".json")
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
                        component = functions[set_components_function]["components"]
                    component.update(components)
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
                if debug and DB["options"]["askForConfirmation"] == "True":
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
                print("[D] contuning processing of: "+item) if (debug and (cont == "y")) else None
                obj = creationHelper(obj, item) if cont == "y" else None
            else:
                print("[D] started processing of: "+item) if debug else None
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
            self.createDict.append({"type": "minecraft:entity_properties", "entity": "this", "predicate": {"minecraft:slots": {slot: predicate}}})
    def __len__(self):
        return len(self.createDict)
    def __getitem__(self, index):
        return self.createDict[index]

def creationHelper(obj, item):
# helper CLI if there's no names, and for id use config
    if DB["options"]["createHelpDiag"] == "True":
        print("Names: "+str(obj["names"]))
        raw_names = input("Please provide additional names for this item <"+item+">, separated by commas. ")
        if raw_names == "":
            pass
        else:
            for raw_name in raw_names.split(", "):
                obj["names"].append(raw_name)
            print("[D] Split <"+raw_names+"> to the following: "+str(obj["names"])) if debug else None
        print("Names: "+str(obj["models"]))
        raw_models = input("Please provide additional item models for this item <"+item+">, separated by commas. ")
        if raw_models == "":
            pass
        else:
            for raw_model in raw_models.split(", "):
                obj["models"].append(raw_model)
            print("[D] Split <"+raw_models+"> to the following: "+str(obj["models"])) if debug else None
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
    names = obj["names"]
    models = obj["models"]
    id_ = obj["id"]
    use = obj["use"]
    useid = use[0]
    usenames = use[1]
    usemodels = use[2]
    version = obj["version"]
    type_ = obj["type"]
    components = obj["components"]
    match type_:
        case "helmet" | "enchanted_helmet" | "diamond_helmet":
            slots = ["armor.head"]
        case "chestplate" | "enchanted_chestplate" | "diamond_chestplate":
            slots = ["armor.chest"]
        case "leggings" | "enchanted_leggings" | "diamond_leggings":
            slots = ["armor.legs"]
        case "boots" | "enchanted_boots" | "diamond_boots":
            slots = ["armor.feet"]
        case "enchanted" | "trim_colour" | "generic" | "diamond" | "mineral" | "baked_apple":
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
    temp_models_predicates = []
    models_predicates = []
    for i in range(len(models)):
        temp_models_predicates.append(item_predicate({"components": {"minecraft:item_name": models[i]}}, slots).createDict)
        for i2 in range(len(temp_models_predicates[i])):
            models_predicates.append(temp_models_predicates[i][i2])
    version_predicates = item_predicate({"predicates": {"minecraft:custom_data": {"version": version}}}, slots).createDict
    trim_colour_predicates = []
    if type_ == "trim_colour":
        trim_colour_predicates = item_predicate({"components": {"minecraft:provides_trim_material": obj["components"]["minecraft:provides_trim_material"]}}, slots).createDict
    elif (type_ == "diamond") | (type_ == "diamond_helmet") | (type_ == "diamond_chestplate") | (type_ == "diamond_leggings") | (type_ == "diamond_boots"):
        diamond = re.compile("^(diamond)_(.+)")
        relevant_electrum = DB["files"]["electrum_"+diamond.search(item).group(2)]
        relevant_names = relevant_electrum["names"]
        relevant_models = relevant_electrum["models"]
        working_diamond_predicates = [{"type": "minecraft:inverted", "term": {"type": "minecraft:any_of", "terms": []}},{"type": "minecraft:inverted", "term": {"type": "minecraft:any_of", "terms": []}}]
        for relevant_name in relevant_names:
            relevant_name_predicates = item_predicate({"components": {"minecraft:item_name": relevant_name}},slots).createDict
            for i in range(len(relevant_name_predicates)):
                working_diamond_predicates[i]["term"]["terms"].append(relevant_name_predicates[i])
        for relevant_model in relevant_models:
            relevant_model_predicates = item_predicate({"components": {"minecraft:item_name": relevant_model}},slots).createDict
            for i in range(len(relevant_model_predicates)):
                working_diamond_predicates[i]["term"]["terms"].append(relevant_model_predicates[i])
    elif type_ == "baked_apple":
        relevant_names = []
        relevant_models = []
        for item_ in DB["files"]:
            if DB["files"][item_]["type"] == "mineral":
                for relevant_name in DB["files"][item_]["names"]:
                    relevant_names.append(relevant_name)
                for relevant_model in DB["files"][item_]["models"]:
                    relevant_models.append(relevant_model)
            else: pass
        baked_apple_predicates = [{"type": "minecraft:inverted", "term": {"type": "minecraft:any_of", "terms": []}},{"type": "minecraft:inverted", "term": {"type": "minecraft:any_of", "terms": []}}]
        for relevant_name in relevant_names:
            relevant_name_predicates = item_predicate({"components": {"minecraft:item_name": relevant_name}},slots).createDict
            for i in range(len(relevant_name_predicates)):
                baked_apple_predicates[i]["term"]["terms"].append(relevant_name_predicates[i])
        for relevant_model in relevant_models:
            relevant_model_predicates = item_predicate({"components": {"minecraft:item_name": relevant_model}},slots)
            for i in range(len(relevant_model_predicates)):
                baked_apple_predicates[i]["term"]["terms"].append(relevant_model_predicates[i])
    else:
        pass
# defining main predicates
    if len(slots) == 2:
        mainhand_predicate = {"type": "minecraft:all_of", "terms": [{"type": "minecraft:any_of", "terms": []}, {"type": "minecraft:inverted", "term": {}}]}
        offhand_predicate = {"type": "minecraft:all_of", "terms": [{"type": "minecraft:any_of", "terms": []}, {"type": "minecraft:inverted", "term": {}}]}
        if usenames:
            for i in range(len(names_predicates)):
                if (i % 2) == 0:
                    mainhand_predicate["terms"][0]["terms"].append(names_predicates[i])
                else:
                    offhand_predicate["terms"][0]["terms"].append(names_predicates[i])
        else:
            pass
        if usemodels:
            mainhand_predicate["terms"][0]["terms"].append(models_predicates[0])
            offhand_predicate["terms"][0]["terms"].append(models_predicates[1])
        else:
            pass
        if useid:
            for i in range(len(id_predicates)):
                if (i % 2) == 0:
                    mainhand_predicate["terms"][0]["terms"].append(id_predicates[i])
                else:
                    offhand_predicate["terms"][0]["terms"].append(id_predicates[i])
        else:
            pass
        if type_ == "trim_colour":
            mainhand_predicate["terms"].append(trim_colour_predicates[0])
            offhand_predicate["terms"].append(trim_colour_predicates[1])
        elif type_ == "diamond":
            mainhand_predicate["terms"].append(working_diamond_predicates[0])
            offhand_predicate["terms"].append(working_diamond_predicates[1])
        elif type_ == "baked_apple":
            mainhand_predicate["terms"].append(baked_apple_predicates[0])
            offhand_predicate["terms"].append(baked_apple_predicates[1])
        else:
            pass
        mainhand_predicate["terms"][1].update({"term": version_predicates[0]})
        offhand_predicate["terms"][1].update({"term": version_predicates[1]})
    else:
        pass
# defining trigger advancement
    match type_:
        case "generic" | "enchanted" | "trim_materials" | "mineral" | "baked_apple" | "diamond":
            trigger_advancement = {"criteria": {item: {"conditions": {"player": [{"type": "minecraft:any_of", "terms": []}]}, "trigger": "minecraft:inventory_changed"}}, "requirements": [[item]],"rewards": {"function": "matcha_item:update/"+item}}
            trigger_advancement["criteria"][item]["conditions"]["player"][0]["terms"].append(mainhand_predicate)
            trigger_advancement["criteria"][item]["conditions"]["player"][0]["terms"].append(offhand_predicate)
        case _:
            trigger_advancement = {"criteria": {item: {"conditions": {"player": [{"type": "minecraft:all_of", "terms": [{"type": "minecraft:any_of", "terms": []}, {"type": "minecraft:inverted", "term": []}]}]}, "trigger": "minecraft:inventory_changed"}}, "requirements": [[item]],"rewards": {"function": "matcha_item:update/"+item}}
            if usenames:
                for i in range(len(names_predicates)):
                    trigger_advancement["criteria"][item]["conditions"]["player"][0]["terms"][0]["terms"].append(names_predicates[i])
            else:
                pass
            if usemodels:
                trigger_advancement["criteria"][item]["conditions"]["player"][0]["terms"][0]["terms"].append(models_predicates[0])
            else:
                pass
            if useid:
                trigger_advancement["criteria"][item]["conditions"]["player"][0]["terms"][0]["terms"].append(id_predicates[0])
            else:
                pass
            trigger_advancement["criteria"][item]["conditions"]["player"][0]["terms"][1]["term"].append(version_predicates[0])
            if (type_ == "diamond_helmet") | (type_ == "diamond_chestplate") | (type_ == "diamond_leggings") | (type_ == "diamond_boots"):
                trigger_advancement["criteria"][item]["conditions"]["player"][0]["terms"].append(working_diamond_predicates[0])
            elif type_ == "baked_apple":
                trigger_advancement["criteria"][item]["conditions"]["player"][0]["terms"].append(baked_apple_predicates[0])
            else:
                pass
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
        case "helmet" | "leggings" | "boots" | "chestplate" | "diamond_helmet" | "diamond_chestplate" | "diamond_leggings" | "diamond_boots":
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
            update_function += "execute as @s if predicate matcha_item:mainhand/"+item+" run function matcha_item:mainhand/"+item+"\n"
            update_function += "execute as @s if predicate matcha_item:offhand/"+item+" run function matcha_item:offhand/"+item+"\n"
            # revoke advancement
            update_function += "advancement revoke @s only matcha_item:trigger/"+item
            # process enchantments
            mainhand_function += "data modify storage matcha_item:enchants held set from entity @s SelectedItem.components.minecraft:enchantments\n"
            offhand_function += "data modify storage matcha_item:enchants held set from entity @s equipment.offhand.components.minecraft:enchantments\n"
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
            # modify item
            mainhand_function += "item modify entity @s "+slots[0]+" matcha_item:modify/"+item+"\n"
            offhand_function += "item modify entity @s "+slots[1]+" matcha_item:modify/"+item+"\n"
            # run special item modifier for enchants
            mainhand_function += "function matcha_item:enchants/mainhand with storage matcha_item:enchants"
            offhand_function += "function matcha_item:enchants/offhand with storage matcha_item:enchants"
        case "generic" | "mineral" | "baked_apple" | "diamond":
            update_function += "execute as @s if predicate matcha_item:mainhand/"+item+" run function matcha_item:mainhand/"+item+"\n"
            update_function += "execute as @s if predicate matcha_item:offhand/"+item+" run function matcha_item:offhand/"+item+"\n"
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
        case "helmet" | "leggings" | "boots" | "chestplate" | "enchanted_helmet" | "enchanted_leggings" | "enchanted_boots" | "enchanted_chestplate" | "diamond_helmet" | "diamond_chestplate" | "diamond_leggings" | "diamond_boots":
            paths = [[advancements_path, trigger_advancement, "advancement"], [update_function_path, update_function, "function"], [item_modifiers_path, item_modifier, "item_modifier"]]
            needed_yesses = 3
        case "enchanted" | "generic" | "trim_colour" | "mineral" | "baked_apple" | "diamond":
            paths = [[advancements_path, trigger_advancement, "advancement"], [update_function_path, update_function, "function"], [mainhand_function_path, mainhand_function, "function"], [offhand_function_path, offhand_function, "function"], [mainhand_predicate_path, mainhand_predicate, "predicate"], [offhand_predicate_path, offhand_predicate, "predicate"], [item_modifiers_path, item_modifier, "item_modifier"]]
            needed_yesses = 7
        case _:
            raise ValueError("trouble on aisle types")
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
    if yesses == needed_yesses:
        obj["processed"] = True
    else:
        pass
    return obj

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
        print("----DEBUG MODE----")
    else: pass
    print("""This script is used with command line arguments, eg. py [script] [arguments]. These are the following arguments:
    d (override) - Discovers files in configured folders and adds to database
    D - Go through configured folders and add 1 version custom data
    u (file) - Update item updater for items with new version
    c (file) - Create new item updater for items with version custom data
    e - Create new processing functions for item
    C (option) - Configure a stored option
(file): [any string] optionally, name of the file excluding file extension
(override): [True/False] optionally, override existing item entries
(option): [any string] optionally, a stored option""")

# match command options and run different functions
match opt:
    case "d":
        discover(opt2)
    case "D":
        destructive()
    case "u":
        update(opt2)
    case "c":
        create(opt2)
    case "C":
        config(opt2)
    case "DEBUG":
        debugf(opt2,opt3)
    case _:
        help_(False)
