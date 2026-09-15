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
    tools = re.compile("sword|axe|pickaxe|shovel|hoe|spear|shield")
    print("Overriding Files!") if override else None
    for folder in DB["folders"]:
        path = os.path.join(Matcha, DB["folders"][folder][0])
        files = os.listdir(path)
        if DB["folders"][folder][1] == "recipe":
            for file_ in files:
                name = filename.match(file_).group(1)
                print("[D] processing now: "+name) if debug else None
                item = DB["files"].get(name)
                if item:
                    item_folders = DB["files"][name]["folder"]
                    if folder in item_folders:
                        pass
                    else:
                        item_folders.append(folder)
                        DB["files"][name]["processed"] = False
                elif override == True or not name in DB["files"]:
                    filepath = os.path.join(path, file_)
                    opened = open(filepath, 'r')
                    read = json.load(opened)
                    result = read["result"]
                    try:
                        version = result["components"]["minecraft:custom_data"]["version"]
                    except:
                        version = None
                    if tools.search(result.get("id")):
                        type_ = "tool"
                    elif head.search(result.get("id")):
                        type_ = "helmet"
                    elif chest.search(result.get("id")):
                        type_ = "chestplate"
                    elif legs.search(result.get("id")):
                        type_ = "leggings"
                    elif feet.search(result.get("id")):
                        type_ = "boots"
                    else:
                        type_ = "generic"
                    if "components" in result:
                        ignore = None
                        components = result["components"]
                    else:
                        ignore = True
                        components = {}
                    try:
                        names = DB["files"][name]["names"]
                    except:
                        try:
                            names = [result["components"]["minecraft:item_name"]]
                        except:
                            names = []
                    try:
                        id_ = DB["files"][name]["id"]
                    except:
                        id_ = result["id"]
                    DB["files"][name] = {}
                    DB["files"][name] = {"version": version, "folder": [folder], "names": names, "id": id_, "type": type_, "processed": False, "components": components, "ignore": ignore}
                    print("[D] output for item <"+name+">: "+str(DB["files"][name])) if debug else None
                else:
                    pass
        else:
            print("Skipping folder <"+folder+"> due to unprocessable folder type")
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
                path = os.path.join(Matcha,folders[i][0],item+".json")
                read = open(path, 'r')
                json_ = json.load(read)
                if folders[i][1] == "recipe":
                    if "components" in json_["result"]:
                        if "minecraft:custom_data" in json_["result"]["components"]:
                            json_["result"]["components"]["minecraft:custom_data"].update({"version": 1})
                        else:
                            json_["result"]["components"]["minecraft:custom_data"] = {"version": 1}
                        if debug:
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
                        files[item]["version"] = "1"
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
            print("[D] ignored processing: "+item) if debug else None
        elif obj["processed"] == True:
            if debug == False:
                print("[D] item already processed: "+item) if debug else None
            elif DB["options"]["askForConfirmation"] == "True":
                cont = input("[D] reprocess file <"+item+">? [y/N] ")
                obj = creationHelper(obj, item) if cont == "y" else None
            else:
                obj = creationHelper(obj, item)
        else:
            obj = creationHelper(obj, item)
    else:
        for item in files:
            obj = files[item]
            if obj["ignore"] == True:
                print("[D] ignored processing: "+item) if debug else None
            elif obj["processed"] == True:
                if debug == False:
                    print("Item already processed: "+item)
                elif DB["options"]["askForConfirmation"] == "True":
                    cont = input("[D] reprocess file <"+item+">? [y/N] ")
                    obj = creationHelper(obj, item) if cont == "y" else None
                else:
                    obj = creationHelper(obj, item)
            else:
                obj = creationHelper(obj, item)
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

class item_predicate():
    def __init__(self, predicate, slots):
        self.dict_ = []
        for slot in slots:
            self.dict_.append({"condition": "minecraft:entity_properties", "entity": "this", "predicate": {"minecraft:slots": {slot: predicate}}})

def creationHelper(obj, item):
# helper CLI if there's no names, and for id use config
    if DB["options"]["createHelpDiag"] == "True":
        use_id = input("Please define if you want to use item id <"+obj["id"]+"> for item <"+item+"> [y/n] ")
        if use_id == "y":
            pass
        else:
            obj["id"] = ""
        print("Names: "+str(obj["names"]))
        raw_names = input("Please provide additional names for this item <"+item+">, separated by commas. ")
        if raw_names == "":
            pass
        else:
            for raw_name in raw_names.split(", "):
                obj["names"].append(raw_name)
            print("[D] Split <"+raw_names+"> to the following: "+str(obj["names"])) if debug else None
    else:
        duplications = -1
        files = DB["files"]
        for item_ in files:
            if files[item_]["id"] == obj["id"]:
                duplications += 1
        if duplications >= 1:
            obj["id"] = ""
        lang_path = os.path.join("MF_resourcepack/assets/minecraft/lang/en_us.json")
        lang_json = json.load(open(lang_path, 'r'))
        try:
            obj["names"].append(lang_json[obj["components"]["minecraft:item_name"]["translate"]])
        except:
            pass
# defining variables
    names = obj["names"]
    id_ = obj["id"]
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
        case "tool":
            slots = ["weapon.mainhand","weapon.offhand"]
        case "generic":
            slots = ["weapon.mainhand","weapon.offhand"]
        case _:
            raise ValueError("So there isn't supposed to be this many item types...")
# defining item modifier
    item_modifier = {"function": "set_components", "components": components}
# defining item predicates
    id_predicates = item_predicate({"items": id_}, slots).dict_
    names_predicates = []
    for name in names:
        names_predicates.append(item_predicate({"components": {"minecraft:item_name": name}}, slots).dict_)
    version_predicates = item_predicate({"predicates": {"minecraft:custom_data": {"version": version}}}, slots).dict_
    print("[D] a bunch of predicates: "+str([id_predicates,names_predicates,version_predicates])) if debug else None
# defining main predicates
    if len(slots) == 2:
        mainhand_predicate = {"condition": "minecraft:all_of", "terms": [{"condition": "minecraft:any_of", "terms": []}, {"condition": "minecraft:inverted", "terms": []}]}
        offhand_predicate = {"condition": "minecraft:all_of", "terms": [{"condition": "minecraft:any_of", "terms": []}, {"condition": "minecraft:inverted", "terms": []}]}
        i = 0
        for names_predicate in names_predicates:
            if (i % 2) == 0:
                mainhand_predicate["terms"][0]["terms"].append(names_predicate)
            else:
                offhand_predicate["terms"][0]["terms"].append(names_predicate)
            i += 1
        if id_ != "":
            mainhand_predicate["terms"][0]["terms"].append(id_predicates[0])
            offhand_predicate["terms"][0]["terms"].append(id_predicates[1])
        else:
            pass
        mainhand_predicate["terms"][0]["terms"].append(version_predicates[0])
        offhand_predicate["terms"][0]["terms"].append(version_predicates[1])
    else:
        pass
# defining trigger advancement
    trigger_advancement_path = os.path.join(Updater,"advancement/"+item+".json")
    trigger_advancement = {"criteria": {item: {"conditions": {"player": {"condition": "minecraft:all_of", "terms": [{"condition": "minecraft:any_of", "terms": []}, {"condition": "minecraft:inverted", "terms": []}]}}}, "trigger": "minecraft:inventory_changed"}, "requirements": [[item]],"rewards": {"function": "matcha_item:update/"+item}}
    if names != []:
        for i in range(len(names_predicates)):
            trigger_advancement["criteria"][item]["conditions"]["player"]["terms"][0]["terms"].append(names_predicates[i][0]["condition"])
    else:
        pass
    if id_ != "":
        for id_predicate in id_predicates:
            trigger_advancement["criteria"][item]["conditions"]["player"]["terms"][0]["terms"].append(id_predicate)
    else:
        pass
    if len(version_predicates) == 1:
        trigger_advancement["criteria"][item]["conditions"]["player"]["terms"][1]["terms"].append(version_predicates[0])
    else:
        for version_predicate in version_predicates:
            trigger_advancement["criteria"][item]["conditions"]["player"]["terms"][1]["terms"].append({"condition": "minecraft:any_of", "terms": [version_predicate]})
# defining update function
    match type_:
        case "helmet" | "leggings" | "boots" | "chestplate":
            update_function = "item modify entity @s "+slots[0]+" "+str(item_modifier)+"\n"
            update_function = "advancement revoke @s only matcha_item:trigger/"+item
        case "tool":
            update_function = "execute if predicate matcha_item:mainhand/"+item+" run matcha_item:mainhand/"+item+"\n"
            update_function += "execute if predicate matcha_item:offhand/"+item+" run matcha_item:offhand/"+item+"\n"
            update_function = "advancement revoke @s only matcha_item:trigger/"+item
            mainhand_function = "item modify entity @s "+slots[0]+" "+str(item_modifier)
            offhand_function = "item modify entity @s "+slots[1]+" "+str(item_modifier)
        case "generic":
            update_function = "execute if predicate matcha_item:mainhand/"+item+" run matcha_item:mainhand/"+item+"\n"
            update_function += "execute if predicate matcha_item:offhand/"+item+" run matcha_item:offhand/"+item+"\n"
            update_function = "advancement revoke @s only matcha_item:trigger/"+item
            mainhand_function = "item modify entity @s "+slots[0]+" "+str(item_modifier)
            offhand_function = "item modify entity @s "+slots[1]+" "+str(item_modifier)
        case _:
            pass
# define paths
    advancements_path = os.path.join(Updater,"advancement/trigger",item+".json")
    update_function_path = os.path.join(Updater,"function/update",item+".mcfunction")
    mainhand_function_path = os.path.join(Updater,"function/mainhand",item+".mcfunction")
    offhand_function_path = os.path.join(Updater,"function/offhand",item+".mcfunction")
    mainhand_predicate_path = os.path.join(Updater,"predicate/mainhand",item+".json")
    offhand_predicate_path = os.path.join(Updater,"predicate/offhand",item+".json")
    match type_:
        case "helmet" | "leggings" | "boots" | "chestplate":
            paths = [[advancements_path, trigger_advancement, "advancement"], [update_function_path, update_function, "function"]]
            needed_yesses = 2
        case "tool" | "generic":
            paths = [[advancements_path, trigger_advancement, "advancement"], [update_function_path, update_function, "function"], [mainhand_function_path, mainhand_function, "function"], [offhand_function_path, offhand_function, "function"], [mainhand_predicate_path, mainhand_predicate, "predicate"], [offhand_predicate_path, offhand_predicate, "predicate"]]
            needed_yesses = 6
        case _:
            pass
# write it!
    yesses = 0
    for path in paths:
        if debug and DB["options"]["askForConfirmation"] == "True":
            if path[2] != "function":
                print(json.dumps(path[1], indent=1))
            else:
                print(path[1])
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
                print(path[0])
            else:
                with open(path[0], 'w') as f:
                    f.write(path[1])
                    yesses +=1
                print(path[0])
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
#      all_of
#        any_of
#          name_predicates
#          id_predicate
#        inverse
#          any_of (not needed in armor)
#            version_predicate

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
