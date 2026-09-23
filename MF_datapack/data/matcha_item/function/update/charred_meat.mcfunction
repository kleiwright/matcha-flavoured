say <D> Triggered update function for charred_meat
execute if predicate matcha_item:mainhand/charred_meat run function matcha_item:mainhand/charred_meat
execute if predicate matcha_item:offhand/charred_meat run function matcha_item:offhand/charred_meat
advancement revoke @s only matcha_item:trigger/charred_meat