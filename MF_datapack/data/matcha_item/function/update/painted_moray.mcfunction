say <D> Triggered update function for painted_moray
execute if predicate matcha_item:mainhand/painted_moray run function matcha_item:mainhand/painted_moray
execute if predicate matcha_item:offhand/painted_moray run function matcha_item:offhand/painted_moray
advancement revoke @s only matcha_item:trigger/painted_moray