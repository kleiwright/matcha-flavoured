### What I want from you
- I want a cute panorama for the new ice update. If you have a very cosy, very matcha, small build, send it to the github!
- I'd love to use it for the new panorama (I don't have any good build ideas for the new ice blocks)
- Bonus points if you have the new Frostbite in frame c: (You don't have to do this in survival)


#### Deep Freeze Small Additions and Tweaks
- Frostbite texture added
  - I modelled this off of [Ötzi](https://en.wikipedia.org/wiki/%C3%96tzi), so the frostbite looks super gross and twisted
- All the other new textures made to taste like matcha (nothing crazy, i love the new jukebox JAPPA texture)
- Ice Ball stupid, Ice Cube instead
- Packed, Blue and Normal ice, all drop ice cubes when you break them without silk touch
- Ice Cubes stack to 64 instead of 16 because I dont hate your inventory
- Ice Cubes can be used to craft Ice
- Freezing water has been reworked to use the freezing effect (yay!)
  - And no, I can't tell if you're in surface water or cave water, sky light level goes below max when in water so I can't use that (if you know how lmk on the github!)
- The Nether has Gravel again
  - I like the nether having gravel, I know it looks like soulsand, idk, Its chthonic to me

#### Small Tweaks and Additions
- Buckets are now copper instead of Iron (Internet-Hyena + Me)
  - People still felt they needed to rush iron, I want to give them as little excuse as possible to do that (except shields maybe)
- Hunger being cleansed UI is less intrusive
- Brown Dye and Green Dye are now craftable via other dyes (Kadincool)
- Scaffold can now be made with sticks, bamboo-derived scaffold buffed
- Saddles can now be made with copper
- Step Height Intrinsic has been changed from +1m to +0.5m 
  - The player default step height is 0.5, so the new total step height is 1m, instead of the old, 1.5m
  - The "Step Icon 1" number will still be 1, and will now represent the total step height, instead of the additional step height
  - This intrinic was moved from the sturdy leather boots, to the pants
  - This means you can't walk over fences anymore
  - If you want a step height total of >1m, you'll have to find them in structures
  
### Bugs & Technical Improvements
- Mipmaps would cause the game to fail/mipmaps would not work, this has been fixed
- Warding can no longer be smithed on to adamant
- Husks now Spawn underground
- Deepslate could be obtained without going underground, that has been fixed
- Some foods could sometimes not be eaten, this has been fixed
- Removed unused hunger predicates
- Warding stones can no longer be placed on (and therefore delete) non-full blocks
- Added '/trigger undo_heartbreaker', which will revert the "Minimum Hearts is now set to x" and increment it by 1
  - AKA if something bugged out, and you're getting double minimum hearts messages, you can use this
- Deepslate Iron did not drop double iron
- Gold Ores could not have fortune applied to them
- Fixed confusing Warding Sword and Shield Recipes (not-manu)
- Fixed errant incorrect map translation keys (not-manu)
- Turtle Shellmets can no longer be repaired with piths (HapppySpud)
- Horse UI Fixed
- ""Removed"" Xp (ThePinkPotato)
  - Its invisible and makes no sound now...but you can still see the shadows
- Removed main/* namespace and the old functions that were in it
- Crafted vs Looted items would sometimes not stack, this has been fixed (not-manu)
- Errant structures still had ingots as loot instead of raw materials, this has been fixed
- Ghasts added to warding and warding stone targets
- Ghast no longer drop loot unless killed by players
- Step height intrinsic has been changed from a attribute modifier to a enchantment attribute modifier
  - I hope to convert all attributes to enchants as well
  - This was done for the future **Vermeil Alloy**, Im still working on the specifics, if you want to help out let me give you a short pitch
  - I need to be able to smith equipment with something else and have it only apply an enchant, and nothing else.
  - Because I need to detect when a recipe is crafted to add and potentially remove enchants, thus, the smithing transform
  - If you want more info, and you're good at DPs, lmk on the github and I'll divulge more info (gotta keep it secret ;) )


### Adding soon but not yet
- Early game frost prot armour (Still working it out, I don't want wool armour, but we might end up doing that)