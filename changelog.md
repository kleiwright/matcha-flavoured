Quick bug fix patch...again. This will be the last update for 26.2, unless there is some major game-breaking bug, I don't want to touch it. I want to work on 26.3 and if a few minor bugs are left behind on this version its fine. 

If you want to help build structures for the new update come check out the Github "Builders wanted!" Issue. I look forward to seeing you

### Bugs
- Ramen and Curries can no longer cooked on campfires
- Fishing Junk LT Fixed (Not for modded biomes)
- Various earring bugs patched (Im not telling you what they were)
- Glow Berry Jam and Mash fixed
- Books no longer turn into angler's almanacs
- Shields no longer turn into fake warding shields
- Bows no longer turn into Compound Bow
- Fox Pelts actually fixed

When you update you will NOT get a message saying "New player has been updated"
This is intentional don't worry

#### Credits
- Hashiru: Optimisations
- NamlessJU: Various coding things, translations
- Nat: Translation project lead, and other stuff
- Imtlx: New Angler's Almanac, Fishing Sounds, Translation, and Github help
- Vee Vaicekauskas: Background musics (Check out their bandcamp!: https://par4.bandcamp.com/)
- DeBlezyBestie: Music Discs
- Bingbongbooper: Food Ideas (Their YT!: https://www.youtube.com/@bingbongbooper)
- HapppySpud: Nether World Gen Gravel Remover, Post-Smithing Enchants, Random Asylum Seekers
- Linkershim: Optimisations, Multiplayer Support and various other coding things
- Pepurion: Optimisaitons, Rose Models
- Fayranchia: Bug fixes
- ReinIsNOTaDev: Optimisations, and Github Workflow nonsese
- Fpekal: Bug fixes, optimisations, and working on 26.3 port
- FloofShade: Item update trigger
- EastMonster: Bug fixes
- Voxybuns: Custom emojis and their implimentation
- milo256: Dyanmic Multiplayer Sleep
- All of the translation volunteers
- Thank you so much everyone!




----------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------

# Release Checklist
- Update mcmeta for RP and DP
- Update current_version_number scoreboard
- REMOVE WITH SONGS, this should only be in the in-dev version
- Add credits for all the new commit things in github
- You can attach a RP as a dependant of the DP in modrinth, so do that

# DOCKET (MUST be done before next release)
  
## BUGS
- Double check that the update Floof did didn't override the matcha:steel It shouldn't have but just in case

## 26.3
- Poplar leaves crafting needs to be added to adv
- Poplar Leaves LTs need to be added


----------------------------------------------------------------------------------------------------------------------------------------------------------------

# Next Update

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
