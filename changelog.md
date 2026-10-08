
Update Ecologic

### Major Additions and Changes (Spoiler Free)
- Update Ecologic
    - Farm animals have been reworked to reward players for taking care of their animals, and punish players for slaughtering animals on-sight
    - Cows, Chickens, and Pigs have special requirements, when these are met, they will become "Happy"
    - Happy animals drop unique loot, more of it, and perform useful tasks more often
    - Each animal's requirements are outlined in the advancements
    - I encourage you to pay attention to animal behaviours and environments, there are other factors not outlined in the advancements that can affect loot
- Animal Spawning and Breeding Changes
    - Animal spawning and breeding has been changed. If you have pre-existing chickens. They will not have as many unique behavious as newly-generated wild ones.
    - Pigs and Cows are unaffected, pre-existing ones will be given all unique behaviours
- Be Aware
    - Mojang recently made a terrible decision to limit animal pathing if they are a certain distance away from the player. I can't find a way around this. This works fine for vanilla, animals in vanilla don't do much of anything, but it can be a problem for this pack. If you think something funky is going on, make sure you stay by your animals a bit to let their path-finding fix itsself.
    - "Persistent mobs' random walk/swim behaviors will now deactivate when players are not nearby, in the same way as non-persistent mobs."
    - Mojang why?? LET ME CHANGE IT PLEASE (at least with mob follow distance attribute to override it?)
- Buckets are now copper instead of iron

**--- SPOILERS FROM HERE ON ---**
- Chicken Overhaul
    - More "chickens" have been added, and spawn only at their corresponding home
    - Chickens no longer give live birth, but its still good to feed them
    - Pay attention not only to the plumage and species of "chicken" but also **their behaviour**, this will affect their drops
    - There are 4 different behaviours right now, each give different loot, so pay attention to your birds and see which ones would be worth taking back to your base.
    - Chickens raised by the player will inherit no special personality types
- Pig Overhaul
    - Pigs can now only be bred with golden carrots or golden apples, but its still a good idea to feed them
    - Pigs can now eat almost everything, just like real life!
    - Pigs can eat certain blocks, I wonder what'll happen?
- Cows
    - Can now be milked with glass bottles, but not after breeding (ironic ik)
### Credits
- Internet-Hyena: Established the new pig and chicken stuff! Amazing
- Hashiru: Optimisations
- NamlessJU: Various coding things, translations
- Nat: Translation project lead, and other stuff
- Imtlx: New Angler's Almanac, Fishing Sounds, Translation, and Github help
- Vee Vaicekauskas: Background musics (Check out their bandcamp!: https://par4.bandcamp.com/)
- DeBlezyBestie: Music Discs
- Bingbongbooper: Food Ideas (Their YT!: https://www.youtube.com/@bingbongbooper)
- HapppySpud: Nether World Gen Gravel Remover, Post-Smithing Enchants, Random Asylum Seekers, and much more
- Linkershim: Optimisations, Multiplayer Support and MANY other coding things
- TankyAibem: Local Flavours, the system that lets villagers have favourite foods
- Pepurion: Optimisations, Rose Models, and many coding things
- Fayranchia: Bug fixes
- ReinIsNOTaDev: Optimisations, and Github Workflow nonsese, Item Update system and more
- Fpekal: Bug fixes, optimisations, and a TON on the 26.3 port
- FloofShade: Item update trigger
- EastMonster: Bug fixes
- Voxybuns: Custom emojis and their implimentation
- milo256: Dyanmic Multiplayer Sleep
- All of the translation volunteers
- Thank you so much everyone!
#### Assets
- ToastNeko: Copper Knife, Wither Tabula Base,
- TheGenderGoblin: 3D Fish models
- LambS0up: Withered Heart (Heatbreaker) Asset
- Bobot-Dev: All the 3D food models
- IrrelevantGaymer: Leatherback Sea turtle
#### Builds and Structures
- Linkershim
- TankyAibem: Chicken roosts
- Grim-O: Plains Village

----------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------

# Release Checklist
- Update mcmeta for RP and DP
- Update current_version_number scoreboard
- Update LANG on-load message to be the current version number
- REMOVE WITH SONGS, this should only be in the in-dev version
- Add credits for all the new commit things in github


# DOCKET (MUST be done before next release)
  
## BUGS
- Double check that the update Floof did didn't override the matcha:steel It shouldn't have but just in case

## 26.3


----------------------------------------------------------------------------------------------------------------------------------------------------------------

# Next Update

### Chicken Overhaul
The update no one asked for!
- More "chickens" have been added, and spawn only at their corresponding home
- Chickens no longer give live birth, but its still good to feed them
- Pay attenion not only to the plumage and species of "chicken" but also **their behaviour**, this will affect their drops
    - There are 4 different behaviours right now, each give different loot, so pay attention to your birds and see which ones would be worth taking back to your base. After all, like dogs, domestication makes chickens stupid as hell

#### TO BE IMPLMENETED
- Chickens no longer spawn normally, aka, no spawning randomly on grass
    - There are 4 different behaviour types
        - MAKE SURE the rascal runs fast, and the curious wanders far from its home
    - Make a way for the farmer to sell and "breed" different cultivars, EX. giving an egg and a special item (not obol) will give a small egg with lore "Curious" 
    - Home-builders make nests ONCE, the type is then removed and replaced with mama type
        - Check to see if a nest can be made (on looong timer, maybe similar to WT summon?), then make the nest, remove the tag
    - Home-builders have no home spot, they will roam far, and once they turn into a mama, summon three baby chicks, two of the chicks can grow up, one is age-locked
    - Anti-slaughter design
        - If a chicken is on a hopper, AND if there is more than x chickens too close, it dies (One of your chickens was squished too tighly, and died)
        - Or something like that
        - Maybe all of them get poison? And if piosoned with a tag, they only drop rotten eggs, and trash feathers
- Pigs
    - Pig nests, pigs still spawn naturally?
    - Pigs don't live in open fields
    - Pigs should mirror cows, and on digging, perform a check, if they are muddy and digging, they become happy
- Cows
    - A trough (cow feeder) which sets cow's home_pos
    - Two timers, a happy timer, happy cows wander far drop more items, when it is out, the cow home_radius will be set to 3
    - A check food timer? Happens not as often, and should only happen if close to home_pos. Will scan the block in front to see if there is food, if so, it will be happy again, and wander away (home_radius:~70) 
    - Or the trough has a timer and commands cows within its radius to look for food
    - Cows should not be able to be happy unless at least 20 blocks from the trough, so they need trough food, and they need distance from the trough food
    - Maybe you can feed it straw to tell how happy it is? And it tells you what the cow needs to be happy
    - Maybe there should be a cooldown on milk prod

    - Restarting
    - Cows have two tags, Fed and Happy
    - Fed means they have fed on a trough
    - Happy means they have the Fed tag, AND, are far away from the trough
    - Cows have a grazing timer, this timer does graze grass, but is primarily used to check these two tags

    - Recap
    - A trough is placed, all cows within range (~70 blocks) set their home_pos to it, and when placed home_radius 3
    - Cows go to the trough
    - Every 30s~1 min, the trough tell all cows[tag=!fed] within ~4m to try and eat
        - If the cows home_pos is not set, it will set it to the trough. Natural cows, unlike all other animals have no default home_pos
    - Every cow checks the block in front of it, to see if it is a hay bale, if so, it eats it
    - After it eats, set home_radius to 50~70m 
    - Every 1.5~2.5 min a grazing check runs
        - Grazing adds 1n to milking value
    - If the cow can graze, check Fed tag
    - If fed, and too close, run angry villager particle
    - If the cow is far from the trough, (at least ~15m?) display happy particles, and add happy tag and remove fed tag
    - Every 20-30 min a happy check is run
    - If happy, remove happy tag, and sets home_radius to 3, maybe display angry particle
    - Happy cows drop more loot
        - Cold cows get +x -cold penalty, Warm cows get +x +warm bonus

    - All cows have a milking value
    - Default is like 8, but has no max value, when happy +8
        - Cold cows get +x +cold bonus, Warm cows get +x -warm penalty
    - This is an int scoreboard. One bucket use, takes 4n away, one bottle use takes 1n away
    - This number can be negative!!! (Debt for taking too much milk)
    - When milking at negative value, cow is hurt, and shows angry particles

    - Cows can only be bred with hay bales, straw is only used to induce grazing (will -n cooldown value much less than pigs do)
    - Straw will tell you if a cow is happy or not, also maybe some indication of the milking value (CAN'T cant disable the default breeding particles)

- General Loottables
    - All animals drop almost nothing without being happy
    - Cows will drop tattered leather unless happy
        - Maybe cows drop raw flesh normally, and when happy drop Raw Prime Steak, raw prime steak can be crafted into 2-4 raw flesh "" cooked
    - Pigs drop less meat unless muddy
        - "" Pigs, drop Raw Prime Porkchop


- Mooshroom
    - I dont want to do anythign with them rn. But also 
    - REMOVE MILKING ABILITY makes it too easy to get food, if you want, add a cooldown


- Farmer Hat, made with wheat and helps with animals!...somehow


### Aspects
- Allows you to extract intrinsics from certain alloys, post-end enchanting
- Uses dragon's breath (rename to something?)
- Extracting an Aspect requires A withered Heart and a dragon's breath
- Bronze -> Eff
- Steel -> Unbreaking
- Electrum -> Fortune III
- Netherite -> Smelting
- Shakudo -> Silk Touch/Life Steal
- ??? -> Protection?? NOTHING...maybe, I just think it should be something only sweats get. But maybe as a replacement we can offer different protections. Ie. Undead protection, PVP protection, and just remove protection entirely
- Unbreakable Enchant from Wither Heart

## Copper Intrinsic
- Lightning Rod/Conductive: redirects all "aura"-based nonsense to itsself, and nullifies it
- This may need to work differently on players, Ex. Zombies need only one piece to be immune, players may need more to nullify all damage

## Worldgen
- Make Diamonds more rare
- Add in TankyAibem & Linkershim's dope ass portal things
- Polish-up villages
- Abbey, but better c:
### The Bird Project
- Birds no longer give live birth
- Disable breeding, let chickens only come from eggs
- Add all eggs to farmer trade 1c + Egg -> Fertilised Egg
- Roosts for all birds
    - Have different prefabs for each bird type. All birds will set their roost to the roost mama (or marker)
    - Have baby chicks that never grow up, but can be fed golden dandelions
    - OR a random tick thing (timer at some large time) that allows chicken to reproduce if no entities nearby are babies, and maybe if there are only few chickens (~<5-8) (STRETCH)
    - Could change raw chicken to chicken cutlet, allows happy chickens (happiness score increase if fed and cooldown is not reached) to drop more product (STRETCH) 

## Low-Priority Bugs
- Add predicate for surface spawn that excludes structures
- When running on mud brick slabs with traversal boots, when I jump I get the speed boost, but when I just run on it normally I don't get the speed boost
- Villager Gift LT (Toolsmith give stone tools, laaame)

## Difficulty scaling
- Use current_difficulty scoreboard to track individual difficulty, this changes as the amount of hearts does
- This difficulty setting is only (so far) to be used to track how many hearts a player looses on death
- Max -> 3
- 20+ -> 2
- 10+ -> 1
- Hard mode adds +1 to n

## Langs
"options.difficulty.peaceful.info"
"options.difficulty.easy.info"
"options.difficulty.normal.info"
"options.difficulty.hard.info"


### Advancements
- Restore their memory, of what they used to be (Echoes: Restore an Echo Shard's memory)
- Child of Moros: Smith Full Adamant Set 
- Harbinger of Fate: Smith Adamant Elytra 
- Rancher??: Make a Straw Hat
- [Golden Carrot] Porcine Propagator: Breed a pair of pigs with a Golden Carrot
- [Potato/Pig in a Crate] Truffle Hunter: When fed to a full belly, some animals will gift you something in return. Just make sure they have a suitable habitat to dig, peck, or eat from.
- [Straw] Roosters : Birds stay near their Roosts in the wild. A newly-hatched Chick always stays close to its birth place
- [Egg] Birdwatcher: Collect an Egg from every Bird species
- [???] GMOs: Obtain a specific animal breed
- [???] Muddy Buddy???: When happy, Pigs will dig for Roots and Mushrooms much more often.
- [Truffle] Truffle!: Have a happy Pig dig up a Truffle for you
- [Stonecutter] XXX: Stonecutters cut more than stone, and produce Blocks more efficiently than a Crafting Bench otherwise would

# Stretch / Back-burner

## Small Additions
- Increase resin amount in pale graden fishing
- Potatoes and Molasses
- French Fries
- Jelly/Jam Bread (Or PBJ without the PB)
- Craftable Thorns
- Add Cinnabar and Sulfur, dripstone, raw copper to dripstone caves, Badlands raw gold, deep dark, disc fragments, to fishing trash
- Increase resin amount in pale graden fishing
- Add secondary items for certain villager trades (ie empty map for map trades)

### Suggestions
- Fermented Spider eye secret meal
- New paintings (with hints!)
- Bag of Sugar!
- ADV: Restore its memory, of what it used to be (Echoes: Restore an Echo Shard's memory)
- Shields
    - Steel shield: a normal shield but with high durability/unbreaking enchant attached
    - Shakudo shield: prevents you from splash potion effects being applied to you if held up (looking at witches), could also give a small amount of magic res as a bonus.
    - Hepatizon shield: removes movement speed penalty when held up.
    - Electrum shield: the same warding effects as current warding shield but blocking attacks from undead monsters deals damage to them so they will die even faster.
    - Adamant shield: deals a very small dmg to the attacker when blocking his dmg, it works on all types of enemies but the damage is way lower than electrum shield, could also come with increased durability/unbreaking.
- Cold biomes (and oceans) should have better loot due to freezing water
- Rebalance obol to be more rare in chests? Trial chambers esp...idk

## Medium Additions
- "Have recipes or hints toward features appear in abandoned camp loot pools, or possibly other loot pools as well.
- Have spawners (aside from dungeons, wait no LT can't read entity data...)
    * I wanted to have a way for spawners to make mobs that won't drop anything, by spawning them with a tag
    * But I tag can't influence loot tables I dont think.
- Cats traded by farmer?
- Wandering Trader trade more than just village maps


## Fun/Stretch Additions
- Re-add Copper Horns, and leave sheet music as treasure, which can be smithed (???? like have one spawn egg as sheet msuic and give each an enchant or soemthing, trigger adv on craft, and merge the data)
   - And use the unused copper horn sounds! The really cool ones!

##World Gen
- Dense Poplars
- Swampier Swamps

## Adv
- Get Full Health Advancement
- Craft a secret weapon advancemnt


## Textures
- All beds are gone :c
- Chest on boat texture n boat texture
- Change Ender chest to be Eye
- Add All of Imtlx' biome sprites
   - Pale Garden
   - Deep Dark
   - Sulfur Caves

## Misc
- Variant Villages to match with villager stories
- Knowledge books??
- Sherds for Enchants?? From Archaeologist
- Maps from Archaeologist based on books (I think Paradise Lost going to Abbey makes sense)
- Upgraded horns for different mobs
- Armour Trim fix-up
- Polish-up abbey, more surrounding buildings, proper downstairs entrance.
    - Actually I think full redesign, manage spawners better. More buildings, more uses for the Copper Eye
- Polish up papal outpost, give barrel a LT
- Quartz ore gen, sulfur ore gen, make sulurfous quartz something else?
### Ore Gen
- Coal high in swamps
- Sulfur high in sulfur caves
- Iron high in Cold Biomes
