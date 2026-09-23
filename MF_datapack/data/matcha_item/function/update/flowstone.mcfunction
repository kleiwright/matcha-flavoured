say <D> Triggered update function for flowstone
execute if predicate matcha_item:mainhand/flowstone run function matcha_item:mainhand/flowstone
execute if predicate matcha_item:offhand/flowstone run function matcha_item:offhand/flowstone
advancement revoke @s only matcha_item:trigger/flowstone