## Major Additions and Changes

## Worldgen
- Dappled forest's canopy moved up, and changed to be closed (Inspired by [Conure's](https://www.youtube.com/watch?v=k0_Y0RJRAPU) video of the same concept)
- Swamps made swampier, new tree type, and shelf mushrooms can now be found here. Plus Bushies
- Seagull roosts can now be found on beaches and stony shores



----------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------

# Release Checklist
- Update mcmeta for RP and DP
- Update current_version_number scoreboard
- REMOVE WITH SONGS, this should only be in the in-dev version
- Add credits for all the new commit things in github


# DOCKET (MUST be done before next release)
  
## BUGS
- Double check that the update Floof did didn't override the matcha:steel It shouldn't have but just in case

## 26.3
- Poplar leaves crafting needs to be added to adv
- Poplar Leaves LTs need to be added


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
- Goat horns obtained from fishing always seem to be "Ponder". Can that be varied?
- Fermented Spider eye secret meal
- New paintings (with hints!)
- Bag of Sugar!
- ADV: Restore its memory, of what it used to be (Echoes: Restore an Echo Shard's memory)
- Shields
    - Steel shield: a normal shield but with high durability/unbreaking enchant attached
    - Shakudo shield: prevents you from splash potion effects being applied to you if held up (looking at witches), could also give a small amount of magic res as a bonus.
    - Hepatizon shield: removes movement speed penalty when held up.
    - Electrum shield: the same warding effects as current warding shield but blocking attacks from undead monsters deals damage to them so they will die even faster.
    - Adamantium shield: deals a very small dmg to the attacker when blocking his dmg, it works on all types of enemies but the damage is way lower than electrum shield, could also come with increased durability/unbreaking.
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
