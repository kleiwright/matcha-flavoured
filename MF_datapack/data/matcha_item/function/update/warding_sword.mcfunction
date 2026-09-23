say <D> Triggered update function for warding_sword
execute if predicate matcha_item:mainhand/warding_sword run function matcha_item:enchants/warding_sword
execute if predicate matcha_item:offhand/warding_sword run function matcha_item:enchants/warding_sword
advancement revoke @s only matcha_item:trigger/warding_sword