say <D> Triggered update function for beacon_kindling
execute if predicate matcha_item:mainhand/beacon_kindling run function matcha_item:mainhand/beacon_kindling
execute if predicate matcha_item:offhand/beacon_kindling run function matcha_item:offhand/beacon_kindling
advancement revoke @s only matcha_item:trigger/beacon_kindling