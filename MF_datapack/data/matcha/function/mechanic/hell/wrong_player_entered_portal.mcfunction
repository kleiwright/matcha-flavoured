# Runs only when the player without the `matcha:hell/can_enter_hell` advancement
# is standing in the nether portal in the overworld
advancement revoke @s only matcha:hell/wrong_player_entered_portal

# Destroy nether portal blocks around this player
fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:air replace minecraft:nether_portal

tellraw @s {"translate":"log.kleispack.hell_portal_closes","color":"red"}
