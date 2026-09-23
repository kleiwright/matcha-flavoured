say <D> Triggered update function for sword
execute if predicate matcha_item:mainhand/sword run function matcha_item:mainhand/sword
execute if predicate matcha_item:offhand/sword run function matcha_item:offhand/sword
advancement revoke @s only matcha_item:trigger/sword