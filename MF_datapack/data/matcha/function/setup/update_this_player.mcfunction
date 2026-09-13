# Since this runs immediately for every newly joined player, we don't need to use an advancement to trigger "on_first_load" functions, we just run them here.
# Set up scoreboard scores
function matcha:setup/scoreboard/player_setup

# For a new version, we wipe their recipe unlock advancements so they can learn new things that were added or tweaked (or bugged)
advancement revoke @s from minecraft:recipes/root

# Remove any advancements that affect gameplay or reward you with money EXCEPT for fish everything and steal all prayers, because I think that might make people sad
advancement revoke @s from matcha:tutorial/light_campfire
advancement revoke @s from matcha:tutorial/obtain_estus
advancement revoke @s through matcha:tutorial/trade_everything
advancement revoke @s through matcha:hell/obtain_warding_stone
advancement revoke @s until matcha:hell/craft_blessing
advancement revoke @s from matcha:end/elytra

# Revoke Mechanics advancements which were not removed properly in previous versions
advancement revoke @s only matcha:mechanics/heart_container_obtained

# Maybe unnecessary? but if they have this they won't be able to sleep so just in case
advancement revoke @s only matcha:mechanics/slept_in_bed

#We remove old stopwatches that aren't used anymore
stopwatch remove minecraft:divinity15s
stopwatch remove minecraft:divinity20s
stopwatch remove minecraft:divinity30s
#apotropaic I think needs to be added

# As only players with a version number below the current version are made to run this function, we can set player's version number to current version
scoreboard players operation @s version_number = current_version version_number

# Announce that a player has been updated
tellraw @a [{"text":"[!]","bold":true,"color":"green"},{"text":": ","color":"green"},{"translate":"log.kleispack.player_updated","color":"gray"}]
