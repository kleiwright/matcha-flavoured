say <D> Triggered update function for butcher_knife
execute if predicate matcha_item:mainhand/butcher_knife run function matcha_item:mainhand/butcher_knife
execute if predicate matcha_item:offhand/butcher_knife run function matcha_item:offhand/butcher_knife
advancement revoke @s only matcha_item:trigger/butcher_knife