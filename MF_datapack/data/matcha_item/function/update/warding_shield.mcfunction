say <D> Triggered update function for warding_shield
execute if predicate matcha_item:mainhand/warding_shield run function matcha_item:enchants/warding_shield
execute if predicate matcha_item:offhand/warding_shield run function matcha_item:enchants/warding_shield
advancement revoke @s only matcha_item:trigger/warding_shield