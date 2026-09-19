#### Credits
- Hashiru: Optimizations.
- NamlessJU: Various coding things, translations.
- Nat: Translation project lead, and other stuff.
- Imtlx: New Angler's Almanac, Fishing Sounds, Translation, and Github help.
- Vee Vaicekauskas: Background musics [Check out their bandcamp!](https://par4.bandcamp.com/).
- DeBlezyBestie: Music Discs.
- Bingbongbooper: Food Ideas (Their YT!: https://www.youtube.com/@bingbongbooper).
- HapppySpud: Nether World Gen Gravel Remover, Post-Smithing Enchants, Random Asylum Seekers.
- Linkershim: Optimisations, Multiplayer Support and various other coding things.
- Pepurion: Optimizations, Rose Models.
- Fayranchia & Tralomine: Bug fixes & Armor Trim Support.
- ReinIsNOTaDev: Optimizations, and Github Workflow nonsense.
- Fpekal: Bug fixes, optimisations, and working on 26.3 port.
- FloofShade: Item update trigger.
- EastMonster: Bug fixes.
- Voxybuns: Custom emojis and their implementation.
- milo256: Dynamic Multiplayer Sleep.
- All of the translation volunteers.
- Thank you so much everyone!


This symbol (👥) means the feature was changed/added per community feedback, or brought to attention by community bug reporters.

This symbol (💻) means the feature was changed/added by community code contributors.

This symbol (🖌️) means the art was added by community artists (music is art).


## **Everything is Broken!!**
- ITS OKAY! I promise
- Hold the broken item in your hand and run:
    * /trigger update_item
- The broken item should update. If it doesn't please report that to the GitHub. But, if you'd like a quick fix and want to throw away the broken item use.
    * /loot give @s loot 
    * And start to type in the name of the broken item and it should auto-fill. Ex. The Divine Comedy is called matcha:treasure/divine_comedy.
#### WHY!?
- In order to make the pack easier to use for other developers, and to maintain its own consistency, a TON of items had to move around. This meant namespace changes for almost everything. So the previous models either minecraft:x or main:x have been moved to matcha:x.
#### But I don't care and I don't want to deal with it
- Fair. Just have both the most recent RP and the old RP on at the same time, with the most recent one being placed on top. This will cover up any broken items and make them seem normal. Just know that enchants will still be broken unless you use the trigger.

## Changelog
### Major Additions and Changes 
* Electrum & Adamant Reworks (See Below).
- New Intrinsic/Effect Icons! (They look awesome, 💻/🖌️, Voxybuns).
- Wither Effect is **VERY** nasty now (Easy mode is exempt):
    * Shakudo Chestplate no longer cleanses wither.
    * Please bring milk or bread to Hell, please its very important.
    * Wither skeleton feet stabbies won't work anymore, but you should try to do it anyways ;).
- Crystal hearts are now "used" instead of "forced" on players, since the new death system provides enough incentive.
    * They also double as cheap totems (at max hearts), and great healing items when < max health, so have fun with them.
- Progression Polish
    * Blast furnace recipe tweaked, Raw Diamonds now exist, and require blast furnaces to smelt.
    * So no more naturally-occurring free diamonds should appear on surface structures.
    * This should extend the copper and iron age a bit more, and when you finally have a blast furnace, feel good to finally be able to USE the diamonds you collected.
- Trigger Update system (💻, FloofShade).
### New Death System
- I am moving forward with the experimental death system. There has been so much postitive feedback for it, that it is staying. If you don't like it, I have some tips:
    * Try to slow down. Make sure you're equiped enough, with enough food, tools, and weapons at your disposal before you go trying to progress. Progressing fast will make you loose hearts faster than progressing slow.
    * Play on Easy. In easy mode, you won't go below 10 hearts.
    * **Dont play on Hard! Hard is meant to be unfair.** Its only for people like me who enjoy getting **one-tapped** by husks. I expect to die **AT LEAST 3 times** at the final boss of any game before I beat it. Anything less than that is cheap to me.
### Where is 26.3??
- 26.3 is a major data-pack-breaking update. Its taking a long time to get things sorted out with the new syntax. Especially beucase matcha is so big. It will take time to come out. But trust me we are working on it. No one is more excited about yellow leaves than me, trust.
### Tweaks & Small Additions 
- Enderman can only pick up melon, pumpkins, and TNT (💻, Linkershim).
- Multiplayer support improvements! (💻, Linkershim).
- Trim Colours added (💻, Tralomine & Me):
    * Yet to add: Electrum, Shakudo, Hepatizon, Silver
    * If you have better textures send them to the GitHub, I ran out of ideas for these
- Buffed Sturdy Leather's Safe Fall Distance (1 -> 2).
- Sturdy Leather can now be repaired with tattered leather.
- Sturdy Leather Boots now have a step height intrinsic (👥).
- Feather Falling is better now (base damage reduction 12% -> 24%; max damage reduction 48% -> 72%).
- Heart Decrementing is now only local not global (Per player not per world, I made this imagining a small group of friends playing together. Not large servers, this change was made to help with that, difficulty is still set at 5 hearts, but since this can be changed I don't think its a big issue).
- Opal Earrings now only give Conduit Power when in water (quick patch job probably needs optimization).
- Zephyr enchantment reworked so that its 3 levels (👥, freshdoktor) (💻, Imtlx).
- Elegy of the Abbey and Crete updated to their new versions.
- Bulk Blocks now unpack directly into your inventory (💻, Linkershim).
- All Mason trades are now Bulk Blocks (💻, Linkershim).
- Bulk Dirt added to Mason Trade.
- Bulk Blocks now have distinct models.
- Diamond, Amethyst, and Lapis Lazuli Earrings (They don't do anything but they ARE very cute) (👥).
- Silver is now found in Deep Dark Chests (sculk covers most of them, so why not?) (👥).
- Hard mode husks are slightly slower (But still faster than normal mode) (👥).
- Lily pads can now be cloned (👥).
- Chains can now be climbed.
- Taiga Grass color slightly changed to be a little less ugly.
- Mobs spawned from spawners no longer drop anything (💻, HapppySpud).
- Withers can now only be spawned on the surface of the overworld.
- Silver added to ominous vault loot.
- Trash removed from trial spawners and vaults.
- Many Loot Tables re-buffed! Because diamonds are now raw, it allows me to give more rewards without worrying about progression breaking so badly that people end up not having fun c:
    * ALL Loot Tables will be rebalanced, cleaned up, and made more unique for each one, however, I don't have the time to do that right now.
- Silver can now be found in Ancient City Chests.
- Ruined portal Loot Tables nerfed, to prevent gold from being obtainable pre-iron (tech. pre-copper).
    * This may be nerfed more depending on how many people I see use this to skip iron.
    * If some people do it? Its fine, fun little shortcut you can do.
    * If a lot of people do it? Something's gone wrong.
- The Quran and Tanakh added to trial chamber loot (Temp fix).
- Post-dragon, Abbeys can still spawn mobs.
- Ofuda trades now require Crystal hearts.
- Cyan and Normal Rose can now be placed in item frame with their own models (💻/🖌️, pepurion).
- Day/Night extender now uses timelines (💻, ReinIsNOTaDev).
- Trims now supported on custom armours (💻, Tralomine).
- Sleeping at night will wake you up in morning, but sleeping in the day still skips 12 hours (💻, milo256).
- Amnestics no longer reset villager XP BUT because of how villager trading work, they won't re-unlock the new items until you trade with them for each level at least once (Best I can do right now).

#### Cooking Changes & Additions 

#### Electrum & Warding
- Netherite and Electrum count for piglin-safe armors (👥, CHECK WHO SUGGESTED THIS).
- Electrum Equipment can no longer burn in lava or fire (since its technically netherite now).
- Warding now "Stacks" with others of its same "type" (that sounds confusing, let me explain):
    * If you hold a ✟ 1 item in your mainhand, and a ✟ 2 in your off-hand, it will apply a ✟ 3 level effect.
    * This cannot exceed ✟ 3 without electrum armour, ✟ 4 is reserved for the electrum set bonus effect.
    * ✟ 4 has other benefits, it can slow husks and even **pierce copper armour's warding resistance**.
    * **Wearing** **✟** 1 and **holding** ✟ 1 will not create a ✟ 2 effect, ✟ always prefers to check armour over held items.
    * So If you hold a ✟ 3 and are wearing **✟** 2, it will have a ✟ 3 effect. If you are wearing **✟** 3 and holding ✟ 2, will will have a ✟ 3 effect.
    * Some minor things have been changed, like the particle effect working on babies, unique particles for slowness, damage, and the way warding works, no longer constant, instead running on a timer:
    * ✟ 1 & 2 - effect/1s
    * ✟ 3 & 4 - effect/0.5s
- Warding removed from Electrum Tools, the focus should be on their Fortune properties.
- Warding Shield nerfed from ✟ 2 -> ✟ 1 since warding now stacks.
- Warding will prioritize certain things in-order (💻, Linkershim):
    * Copper-wearing mobs will be targeted first, included armor stand, they act as a magic lightning rod, nullifying its effects.
    * Secondarily, the Wither.
    * Lastly, the closest undead mob.

#### Adamant & DOOM!
- Adamant's intrinsic has been reworked into DOOM! (👥, CHECK WHO SUGGESTED THIS, AND EMAIL IF ITS OKAY TO CREDIT).
- Doom is an intrinsic of adamant armor, which clears weakness every three seconds from nearby mobs, when the effect is cleared, it deals armour-piercing damage.
- 𐕣 3 -> 1.5 hearts ; 𐕣 16 (Full set + Bonus) -> 8 hearts
    * These numbers will likely be changed when I get some more feedback.
- Adamant's Weapon intrinsic applies weakness to mobs.
- Adamant's Tool intrinsic auto-smelts mined blocks.
- Yes, this means using tipped weakness arrows is a really useful thing now, but I'll add a better recipe for that later (A way to get lingering potions I think)
- I think this fits Adamant's apocryphal title much more, and ties in with its hell-based theming.

#### Design Decisions/Ethos Moving Forward
- Dolabras are shifting from being treated as an Axe (weapon), Axe (tool), and Pickaxe hybrid to an Axe (tool) and Pickaxe hybrid. So damage will go down for all of them, weapon-based enchants removed, and tool-based enchants improved.
- A tier's armor, tool, and weapon intrinsic should be more varied and distinct. This will be the ethos going forward. (Look at Adamant for the best example of this).


### Bugs
- "Orphaned" villagers can only be children (💻, HapppySpud).
- Fortune now works on: Tomatoes, Glow berry vines, Chorus Plant (I think some of this was vanilla-intended, but I added it in regardless).
- Warding's (✟ x) effects were inconsistent at various levels, this was fixed.
- Earrings no longer give knockback resistance.
- Elegy of the Abbey can no longer be crafted.
- Shakudo Elytra Bonus was not working (not sure how this was deleted).
- Water bottles no longer dupe in creative.
- Oak and Dark Oak leaf Loot Table updated to include Electrum fortune.
- Lily pad item Texture fixed.
- Warding stone particles updated to match new warding ones.
- Spawners no longer kill you when you place a block on them, only when you try to use a spawn egg on it (💻, HapppySpud).
- Copper torches now consistent with soul torches (💻, MrHatsy).
- Allays did not spawn in The Abbey, they now spawn on generation instead.
- "Bonfire Lit" Advancement works now.
- Post-dragon, abbey mobs would vanish, this is no longer true.
- Snowballs and Enderpearls sometimes didn't stack to 64 (💻, HapppySpud).
- Massive lag spikes after ender dragon is killed, this bug was identified and...fixed? (💻, HapppySpud).
    * Happpy IDed the bug and I assume it is fixed, but we still need testing to make sure.
- Many bugs for Crystal hearts, Doom, etc, more and more (💻, Linkershim).
- Removed Beacon kindling from rooted dirt group (💻, fpekal).
- fix another fishing typo that makes the advancement not unlockable (💻, Tralomine) .
- Pride Banners and shields REfixed (💻, Fayranchia).

#### Texture Changes
- Removed Redstone Particles.
- Poplar Leaves, Log & Plank textures added.
- All Vertical Slab textures added (👥, specifically barce & fwhip's video).
- Chiseled Sandstone Texture (🖌️, MrHatsy).
- Nether Portal is now Purple (🖌️, LambS0up) (👥, Cosmoxnautica).
- Skeletons (for Lore).

#### Removed 
- Estus Flask, I want food to be most important, encourage players to actually make farms and ranches.

### Technical Changes 
- Moved all assets and data into "matcha" namespace. Main no longer exists (Technically it does for enchantment updates but it will be removed entirely soon).

Many suggestions I have taken note of but have not added yet, EX. craftable fortune III, but this is being pushed back to the next update (scope creep is real).

There are also plenty of changes I forgot here. Beucase this move from main was so chaotic, a lot got lost in the crossfire. If a bug was fixed from the previous alpha, or fixed from the internal moving of things around, it was really hard to tell when all was said and done. Hopefully this won't happen again.



----------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------

# Release Checklist
- Update mcmeta for RP and DP
- Update current_version_number scoreboard
- REMOVE WITH SONGS, this should only be in the in-dev version
- Add credits for all the new commit things in github


# DOCKET (MUST be done before next release)
  
## BUGS
-


## 26.3
- Poplar leaves crafting needs to be added to adv
- Poplar Leaves LTs need to be added
- All concrete and wool needs to be in stonecutter


----------------------------------------------------------------------------------------------------------------------------------------------------------------

# Next Update

### Aspects
- Allows you to extract intrinsics from certain alloys, post-end enchanting.
- Uses dragon's breath (rename to something?).
- Extracting an Aspect requires A withered Heart and a dragon's breath.
- Bronze -> Eff.
- Steel -> Unbreaking.
- Electrum -> Fortune III.
- Netherite -> Smelting.
- Shakudo -> Silk Touch/Life Steal.
- ??? -> Protection?? NOTHING...maybe, I just think it should be something only sweats get. But maybe as a replacement we can offer different protections. Ie. Undead protection, PVP protection, and just remove protection entirely.
- Unbreakable Enchant from Wither Heart.

## Copper Intrinsic
- Lightning Rod/Conductive: redirects all "aura"-based nonsense to itself, and nullifies it.
- This may need to work differently on players, Ex. Zombies need only one piece to be immune, players may need more to nullify all damage.

## Worldgen
- Make Diamonds more rare.
- Add in TankyAibem & Linkershim's dope ass portal things.
- Polish-up villages.
- Abbey, but better c:

## Low-Priority Bugs
- Add predicate for surface spawn that excludes structures.
- When running on mud brick slabs with traversal boots, when I jump I get the speed boost, but when I just run on it normally I don't get the speed boost.
- Villager Gift LT (Toolsmith give stone tools, laaame).

## Difficulty scaling
- Use current_difficulty scoreboard to track individual difficulty, this changes as the amount of hearts does.
- This difficulty setting is only (so far) to be used to track how many hearts a player looses on death.
- Max -> 3
- 20+ -> 2
- 10+ -> 1
- Hard mode adds +1 to n.

## Langs
"options.difficulty.peaceful.info"
"options.difficulty.easy.info"
"options.difficulty.normal.info"
"options.difficulty.hard.info"


### Advancements
- Restore their memory, of what they used to be (Echoes: Restore an Echo Shard's memory).
- Child of Moros: Smith Full Adamant Set .
- Harbinger of Fate: Smith Adamant Elytra.

# Stretch / Back-burner

## Small Additions
- Increase resin amount in pale garden fishing.
- Potatoes and Molasses.
- French Fries.
- Jelly/Jam Bread (Or PBJ without the PB).
- Craftable Thorns.
- Add Cinnabar and Sulfur, dripstone, raw copper to dripstone caves, Badlands raw gold, deep dark, disc fragments, to fishing trash.
- Add secondary items for certain villager trades (ie empty map for map trades)..

### Suggestions
- Goat horns obtained from fishing always seem to be "Ponder". Can that be varied?.
- Fermented Spider eye secret meal.
- New paintings (with hints!).
- Bag of Sugar!
- ADV: Restore its memory, of what it used to be (Echoes: Restore an Echo Shard's memory).
- Shields
    - Steel shield: a normal shield but with high durability/unbreaking enchant attached.
    - Shakudo shield: prevents you from splash potion effects being applied to you if held up (looking at witches), could also give a small amount of magic res as a bonus.
    - Hepatizon shield: removes movement speed penalty when held up.
    - Electrum shield: the same warding effects as current warding shield but blocking attacks from undead monsters deals damage to them so they will die even faster.
    - Adamantium shield: deals a very small damage to the attacker when blocking his damage, it works on all types of enemies but the damage is way lower than Electrum shield, could also come with increased durability/unbreaking.
- Cold biomes (and oceans) should have better loot due to freezing water.
- Rebalance obol to be more rare in chests? Trial chambers esp...idk.

## Medium Additions
- "Have recipes or hints toward features appear in abandoned camp loot pools, or possibly other loot pools as well.
- Have spawners (aside from dungeons, wait no LT can't read entity data...)
    * I wanted to have a way for spawners to make mobs that won't drop anything, by spawning them with a tag
    * But I tag can't influence loot tables I dont think.

While much advancement has been made toward making the learning process of the pack much more streamlined, encouraging players to explore in the hopes of learning more esoteric or even baseline datapack knowledge may be worthwhile. Little notes adding lore, or explaining mechanics; the diary of a chef going on about a recipe or a miner speaking about finding silver high up in the mountains."
- Cats traded by farmer?
- Wandering Trader trade more than just village maps.


## Adv
- Get Full Health Advancement.
- Craft a secret weapon advancemnt.


## Textures
- All beds are gone :c
- Chest on boat texture n boat texture.
- Change Ender chest to be Eye.
- Add All of Imtlx' biome sprites:
   - Pale Garden
   - Deep Dark
   - Sulfur Caves

## Misc
- Variant Villages to match with villager stories.
- Knowledge books??
- Sherds for Enchants?? From Archaeologist.
- Maps from Archaeologist based on books (I think Paradise Lost going to Abbey makes sense).
- Upgraded horns for different mobs.
- Armour Trim fix-up.
- Polish-up abbey, more surrounding buildings, proper downstairs entrance.
    - Actually I think full redesign, manage spawners better. More buildings, more uses for the Copper Eye.
- Polish up papal outpost, give barrel a LT.
- Quartz ore gen, sulfur ore gen, make sulurfous quartz something else?
### Ore Gen
- Coal high in swamps.
- Sulfur high in sulfur caves.
- Iron high in Cold Biomes.
