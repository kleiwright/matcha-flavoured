say <D> Triggered update function for opal
execute if predicate matcha_item:mainhand/opal run function matcha_item:mainhand/opal
execute if predicate matcha_item:offhand/opal run function matcha_item:offhand/opal
advancement revoke @s only matcha_item:trigger/opal