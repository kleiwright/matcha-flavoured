say <D> Triggered update function for copper_sword
execute if predicate matcha_item:mainhand/copper_sword run function matcha_item:mainhand/copper_sword
execute if predicate matcha_item:offhand/copper_sword run function matcha_item:offhand/copper_sword
advancement revoke @s only matcha_item:trigger/copper_sword