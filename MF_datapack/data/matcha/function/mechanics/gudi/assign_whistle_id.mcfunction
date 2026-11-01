# Add unique ID to whistle from scoreboard
execute store result storage matcha:gudi whistleId int 1 run scoreboard players get whistleId whistleId
item modify entity @s weapon.mainhand {"type": "copy_custom_data", "source": {"type": "storage", "source": "matcha:gudi"}, "ops": [{"source": "whistleId", "target": "whistleId", "op": "replace"}]}
scoreboard players add whistleId whistleId 1
data remove storage matcha:gudi whistleId