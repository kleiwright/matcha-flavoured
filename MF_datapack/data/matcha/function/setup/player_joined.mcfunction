# Runs when player joins the server
scoreboard players set @s leave_game 0

# Revoke all advancements that auto-revoke themselves
advancement revoke @s from matcha:imm_revoke
# Enable Heartbreaker trigger command
scoreboard players enable @s undo_heartbreaker